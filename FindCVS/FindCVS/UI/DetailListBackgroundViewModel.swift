//
//  DetailListBackgroundViewModel.swift
//  FindCVS
//
//  Created by 박경춘 on 2023/03/27.
//

import RxSwift
import RxCocoa

struct DetailListBackgroundViewModel {
    let isStatusLabelHidden: Signal<Bool>
    let shouldHideStatusLabel = PublishSubject<Bool>()
    
    init() {
        isStatusLabelHidden = shouldHideStatusLabel
            .asSignal(onErrorJustReturn: true)
    }
}
