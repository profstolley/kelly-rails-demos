Case.destroy_all

Case:create! ([{
  title: "The Whistle-Blower",
  author: "Peggy Connolley",
  abstract: "Research assistant blows whistle on supervisor.",
  year: "1999",
  subject: "whistleblowing",
  subject: "mentoring",
},

{
  title: "Immigration woe",
  author: "Kelly Laas",
  abstract: "Student stuck in bad TA position due to immigration status,
              overworked and underpaid",
  year: "2016",
  subject: "mentoring",
  subject: "culture"
}])

p "Created #{Case.count} cases"
