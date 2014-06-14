App.Lead = DS.Model.extend
  firstName: DS.attr('string')
  lastName: DS.attr('string')
  email: DS.attr('string')
  phone: DS.attr('string')
  status: DS.attr('string', defaultStatus: 'new')
  notes: DS.attr('string')

  fullName: ( ->
    "#{@get('firstName')} #{@get('lastName')}"
  ).property('firstName', 'lastName')
