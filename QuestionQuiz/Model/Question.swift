//
//  Question.swift
//  QuestionQuiz
//
//  Created by Александр Соболев on 06.11.2023.
//

struct Question {
    let title: String
    let answers: [Answer]
    let type: ResponseType
    
    static func getQuestions() -> [Question] {
        [
        Question(
            title: "Какую пищу вы предпочитаете?",
            answers: [
                Answer(title: "Стейк", animal: .dog),
                Answer(title: "Рыба", animal: .cat),
                Answer(title: "Морковь", animal: .rabbit),
                Answer(title: "Кукуруза", animal: .turtle),
            ], type: .single
        ),
        Question(
            title: "Что вам нравится больше?",
            answers: [
                Answer(title: "Плавать", animal: .dog),
                Answer(title: "Спать", animal: .cat),
                Answer(title: "Обнимать", animal: .rabbit),
                Answer(title: "Есть", animal: .turtle)
            ], type: .multiple
        ),
        Question(
            title: "Любите ли вы поездки на автомобиле?",
            answers: [
                Answer(title: "Ненавижу", animal: .cat),
                Answer(title: "Нервничаю", animal: .rabbit),
                Answer(title: "Нормально", animal: .turtle),
                Answer(title: "Обожаю", animal: .dog)
            ], type: .ranged
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
