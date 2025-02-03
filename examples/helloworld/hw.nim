import ../../qt/[gen_qapplication, gen_qpushbutton]

import strformat

{.passl: gorge("pkg-config --libs Qt5Widgets").}
proc main() =
  let app = QApplication.create()

  let btn = QPushButton.create3("Hello world!")
  btn.SetFixedWidth(320)

  var counter = 0

  btn.onPressed(proc =
    counter += 1
    btn.SetText(&"You have clicked the button {counter} time(s)")
  )

  btn.Show()

  echo QApplication.Exec()


main()