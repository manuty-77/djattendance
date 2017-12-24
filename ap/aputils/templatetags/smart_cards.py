from collections import namedtuple
from django import template
from django.core.urlresolvers import reverse

#code structure copied from aputils/templatetags/smart_menu.py

def CardLink(title, url='#', number=None):
  return namedtuple('CardLink', 'title url number')(title=title, url=url, number=number)

def Card(header_title, condition=True, card_links=[]):
  return namedtuple('Card', 'header_title condition card_links')(header_title=header_title, condition=condition, card_links=card_links)

register = template.Library()

# Generates all the cards
@register.assignment_tag(takes_context=True)
def generate_cards(context):
  user = context['user']
  if user.is_anonymous():
    return ""

  sample_card = Card(
    header_title="Sample Card",
    condition=True,
    card_links=[
        CardLink(title="just a sample"),
        CardLink(title="look in aputils/templatetags/smart_cards.py")
    ]
  )

  sample_card_2 = Card(
    header_title="Sample Card",
    condition=True,
    card_links=[
        CardLink(title="just a sample"),
        CardLink(title="look in aputils/templatetags/smart_cards.py")
    ]
  )


  badge_card = Card(
      header_title='Badges',
      condition=user.has_group(['badges']), 
      card_links=[
          CardLink(title="Badge Portal", url=reverse('badges:badges_list'))
      ]
  )

  cards = [sample_card, sample_card_2, badge_card]

  return cards