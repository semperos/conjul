(ns rp.conjul
  (:gen-class))

(def ^:const consul-url "YOUR URL HERE")

(defn -main [& args]
  (println "Hitting Consul at" consul-url)
  (println (slurp (str consul-url "/v1/catalog/service/YOUR_SERVICE"))))
