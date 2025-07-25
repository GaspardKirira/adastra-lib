#include <iostream>
#include <string>
#include <vector>

#include <adastra/core/Core.hpp>
#include <softadastra/shop/ShopManager.hpp>
#include <softadastra/chat/ChatModule.hpp>

using namespace adastra::core::algorithms;

template<typename T>
void print(const std::vector<T>& v){
    std::cout << "---------------------" << std::endl;
    for(auto pos = v.begin(); pos != v.end(); ++pos){
        if(pos != v.begin()){
            std::cout << ", ";
        }
        std::cout << *pos;
    }
    std::cout << std::endl;
}

int main() {
    softadastra::shop::ShopManager manager;
    std::cout << manager.getWelcomeMessage() << std::endl;

    return 0;
}
