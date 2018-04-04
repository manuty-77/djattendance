from django.template.defaulttags import register

@register.filter
def get_item(data, index):
  return data[list(data.keys())[index]]

@register.filter
def get_item_for_data(data, item):
  return data[item]

@register.filter
def get_date_range(data):
	return data['date_from'].strip('00:00:00') + ' to ' + data['date_to'].strip('00:00:00')