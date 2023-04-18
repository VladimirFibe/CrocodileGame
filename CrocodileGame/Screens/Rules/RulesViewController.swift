//
//  RulesViewController.swift
//  CrocodileGame
//
//  Created by Alexandr Rodionov on 16.04.23.
//

import UIKit

class RulesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

private extension RulesViewController {
    func setupLayout() {
        configureScrollView()
        configureContentView()
        prepareScrollView()
        prepareBackground()
    }
    func configureScrollView() {
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.showsVerticalScrollIndicator = true
        scrollView.alwaysBounceVertical = true
        scrollView.backgroundColor = .clear
    }
    func configureContentView() {
        rulesLabel.translatesAutoresizingMaskIntoConstraints = false
        rulesLabel.numberOfLines = 0
        rulesLabel.text = """
 В игру играют командами из двух или более человек. Задача каждого игрока команды - объяснить слово, которое он видит на экране, следуя условиям, которые дополнительно указаны под загаданным словом. Чем больше слов отгадала команда, тем больше она заработает баллов. Выигрывает команда, набравшая больше всего баллов.  На отгадывание слова дается одна минуту. При нарушении правил объяснения слова, ход передается следующей команде. ... ...
  В игру играют командами из двух или более человек. Задача каждого игрока команды - объяснить слово, которое он видит на экране, следуя условиям, которые дополнительно указаны под загаданным словом. Чем больше слов отгадала команда, тем больше она заработает баллов. Выигрывает команда, набравшая больше всего баллов.  На отгадывание слова дается одна минуту. При нарушении правил объяснения слова, ход передается следующей команде. ... ...
  В игру играют командами из двух или более человек. Задача каждого игрока команды - объяснить слово, которое он видит на экране, следуя условиям, которые дополнительно указаны под загаданным словом. Чем больше слов отгадала команда, тем больше она заработает баллов. Выигрывает команда, набравшая больше всего баллов.  На отгадывание слова дается одна минуту. При нарушении правил объяснения слова, ход передается следующей команде. ... ...
  В игру играют командами из двух или более человек. Задача каждого игрока команды - объяснить слово, которое он видит на экране, следуя условиям, которые дополнительно указаны под загаданным словом. Чем больше слов отгадала команда, тем больше она заработает баллов. Выигрывает команда, набравшая больше всего баллов.  На отгадывание слова дается одна минуту. При нарушении правил объяснения слова, ход передается следующей команде. ... ...
  В игру играют командами из двух или более человек. Задача каждого игрока команды - объяснить слово, которое он видит на экране, следуя условиям, которые дополнительно указаны под загаданным словом. Чем больше слов отгадала команда, тем больше она заработает баллов. Выигрывает команда, набравшая больше всего баллов.  На отгадывание слова дается одна минуту. При нарушении правил объяснения слова, ход передается следующей команде. ... ...
 """
    }
    func prepareScrollView() {
        view.addSubview(backgroundImageView)
        view.addSubview(scrollView)
        scrollView.addSubview(rulesLabel)
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            rulesLabel.topAnchor.constraint(equalTo: scrollView.topAnchor),
            rulesLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            rulesLabel.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            rulesLabel.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            rulesLabel.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])
    }
    
    func prepareBackground() {
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])

    }

}
