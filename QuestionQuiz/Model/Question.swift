//
//  Question.swift
//  QuestionQuiz
//
//  Created by Александр Соболев on 06.11.2023.
//

struct Question {
    let title: String
    let type: ResponseType
    let answers: [Answer]
    
    static func getQuestions() -> [Question] {
        [
            Question(
                title: "Какую пищу вы предпочитаете?",
                type: .single,
                answers: [
                    Answer(title: "Стейк", animal: .dog),
                    Answer(title: "Рыба", animal: .cat),
                    Answer(title: "Морковь", animal: .rabbit),
                    Answer(title: "Кукуруза", animal: .turtle)
                ]
            ),
            Question(
                title: "Что вам нравится больше?",
                type: .multiple,
                answers: [
                    Answer(title: "Плавать", animal: .dog),
                    Answer(title: "Спать", animal: .cat),
                    Answer(title: "Обнимать", animal: .rabbit),
                    Answer(title: "Есть", animal: .turtle)
                ]
            ),
            Question(
                title: "Любите ли вы поездки на автомобиле?",
                type: .ranged,
                answers: [
                    Answer(title: "Ненавижу", animal: .cat),
                    Answer(title: "Нервничаю", animal: .rabbit),
                    Answer(title: "Нормально", animal: .turtle),
                    Answer(title: "Обожаю", animal: .dog)
                ]
            )
        ]
    }
}

struct Answer {
    let title: String
    let animal: Animal
}

enum ResponseType {
    case single
    case multiple
    case ranged
}

enum Animal: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "Вам нравится быть с друзьями"
        case .cat:
            return "Вы себе на уме"
        case .rabbit:
            return "Вы активны и за здоровый образ жизни"
        case .turtle:
            return "Кто понял жизнь - тот не спешит"
        }
    }
}
