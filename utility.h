#ifndef UTILITY_H
#define UTILITY_H
//Simple utility class to calculate device independent pixels for android
#include <QObject>
#include <QScreen>
#include <QGuiApplication>

class Utility : public QObject
{
    Q_OBJECT
public:
    explicit Utility(QObject *parent = 0);

    Q_INVOKABLE int dp(const int& px);

private:

    qreal m_dpi;
    qreal m_pratio;
};

#endif // UTILITY_H
