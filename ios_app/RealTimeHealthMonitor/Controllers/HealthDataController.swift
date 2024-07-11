import Foundation
import HealthKit

class HealthDataController: ObservableObject {
    private var healthStore = HKHealthStore()

    func requestAuthorization() {
        let heartRateType = HKQuantityType.quantityType(forIdentifier: .heartRate)!
        let readTypes = Set([heartRateType])

        healthStore.requestAuthorization(toShare: nil, read: readTypes) { success, error in
            if success {
                // Authorization successful
            } else {
                // Handle the error
            }
        }
    }

    func fetchHeartRateData() {
        let heartRateType = HKQuantityType.quantityType(forIdentifier: .heartRate)!
        let query = HKSampleQuery(sampleType: heartRateType, predicate: nil, limit: HKObjectQueryNoLimit, sortDescriptors: nil) { query, samples, error in
            guard let samples = samples as? [HKQuantitySample] else {
                return
            }

            // Process the heart rate data
        }

        healthStore.execute(query)
    }
}
