// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package payment_station

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// Deprecated: 2025-07-16 - Use PublicNormalizePaymentReturnURLPaymentProvider<EnumValue>Constant instead.
// Get the enum in PublicNormalizePaymentReturnURLParams
const (
	PublicNormalizePaymentReturnURLADYENConstant    = "ADYEN"
	PublicNormalizePaymentReturnURLALIPAYConstant   = "ALIPAY"
	PublicNormalizePaymentReturnURLCHECKOUTConstant = "CHECKOUT"
	PublicNormalizePaymentReturnURLNEONPAYConstant  = "NEONPAY"
	PublicNormalizePaymentReturnURLPAYPALConstant   = "PAYPAL"
	PublicNormalizePaymentReturnURLSTRIPEConstant   = "STRIPE"
	PublicNormalizePaymentReturnURLWALLETConstant   = "WALLET"
	PublicNormalizePaymentReturnURLWXPAYConstant    = "WXPAY"
	PublicNormalizePaymentReturnURLXSOLLAConstant   = "XSOLLA"
)

// Get the enum in PublicNormalizePaymentReturnURLParams
const (
	PublicNormalizePaymentReturnURLPaymentProviderADYENConstant    = "ADYEN"
	PublicNormalizePaymentReturnURLPaymentProviderALIPAYConstant   = "ALIPAY"
	PublicNormalizePaymentReturnURLPaymentProviderCHECKOUTConstant = "CHECKOUT"
	PublicNormalizePaymentReturnURLPaymentProviderNEONPAYConstant  = "NEONPAY"
	PublicNormalizePaymentReturnURLPaymentProviderPAYPALConstant   = "PAYPAL"
	PublicNormalizePaymentReturnURLPaymentProviderSTRIPEConstant   = "STRIPE"
	PublicNormalizePaymentReturnURLPaymentProviderWALLETConstant   = "WALLET"
	PublicNormalizePaymentReturnURLPaymentProviderWXPAYConstant    = "WXPAY"
	PublicNormalizePaymentReturnURLPaymentProviderXSOLLAConstant   = "XSOLLA"
)

// NewPublicNormalizePaymentReturnURLParams creates a new PublicNormalizePaymentReturnURLParams object
// with the default values initialized.
func NewPublicNormalizePaymentReturnURLParams() *PublicNormalizePaymentReturnURLParams {
	var ()
	return &PublicNormalizePaymentReturnURLParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicNormalizePaymentReturnURLParamsWithTimeout creates a new PublicNormalizePaymentReturnURLParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicNormalizePaymentReturnURLParamsWithTimeout(timeout time.Duration) *PublicNormalizePaymentReturnURLParams {
	var ()
	return &PublicNormalizePaymentReturnURLParams{

		timeout: timeout,
	}
}

// NewPublicNormalizePaymentReturnURLParamsWithContext creates a new PublicNormalizePaymentReturnURLParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicNormalizePaymentReturnURLParamsWithContext(ctx context.Context) *PublicNormalizePaymentReturnURLParams {
	var ()
	return &PublicNormalizePaymentReturnURLParams{

		Context: ctx,
	}
}

// NewPublicNormalizePaymentReturnURLParamsWithHTTPClient creates a new PublicNormalizePaymentReturnURLParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicNormalizePaymentReturnURLParamsWithHTTPClient(client *http.Client) *PublicNormalizePaymentReturnURLParams {
	var ()
	return &PublicNormalizePaymentReturnURLParams{
		HTTPClient: client,
	}
}

/*PublicNormalizePaymentReturnURLParams contains all the parameters to send to the API endpoint
for the public normalize payment return url operation typically these are written to a http.Request
*/
type PublicNormalizePaymentReturnURLParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*PayerID
	  PayPal payer id

	*/
	PayerID *string
	/*Foreinginvoice*/
	Foreinginvoice *string
	/*InvoiceID*/
	InvoiceID *string
	/*Payload
	  adyen redirect session data for checkout sdk

	*/
	Payload *string
	/*RedirectResult
	  adyen redirect session data for drop in

	*/
	RedirectResult *string
	/*ResultCode
	  adyen redirect resultCode from checkout sdk

	*/
	ResultCode *string
	/*SessionID
	  adyen redirect session Id for drop in

	*/
	SessionID *string
	/*Status
	  paypal and xsolla will return this

	*/
	Status *string
	/*Token
	  PayPal token

	*/
	Token *string
	/*Type*/
	Type *string
	/*UserID*/
	UserID *string
	/*OrderNo
	  Platform order no

	*/
	OrderNo string
	/*PaymentOrderNo
	  Platform payment order no

	*/
	PaymentOrderNo string
	/*PaymentProvider
	  Platform payment provider

	*/
	PaymentProvider string
	/*ReturnURL*/
	ReturnURL string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public normalize payment return url params
func (o *PublicNormalizePaymentReturnURLParams) WithTimeout(timeout time.Duration) *PublicNormalizePaymentReturnURLParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public normalize payment return url params
func (o *PublicNormalizePaymentReturnURLParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public normalize payment return url params
func (o *PublicNormalizePaymentReturnURLParams) WithContext(ctx context.Context) *PublicNormalizePaymentReturnURLParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public normalize payment return url params
func (o *PublicNormalizePaymentReturnURLParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public normalize payment return url params
func (o *PublicNormalizePaymentReturnURLParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public normalize payment return url params
func (o *PublicNormalizePaymentReturnURLParams) WithHTTPClient(client *http.Client) *PublicNormalizePaymentReturnURLParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public normalize payment return url params
func (o *PublicNormalizePaymentReturnURLParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public normalize payment return url params
func (o *PublicNormalizePaymentReturnURLParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicNormalizePaymentReturnURLParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public normalize payment return url params
func (o *PublicNormalizePaymentReturnURLParams) WithNamespace(namespace string) *PublicNormalizePaymentReturnURLParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public normalize payment return url params
func (o *PublicNormalizePaymentReturnURLParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPayerID adds the payerID to the public normalize payment return url params
func (o *PublicNormalizePaymentReturnURLParams) WithPayerID(payerID *string) *PublicNormalizePaymentReturnURLParams {
	o.SetPayerID(payerID)
	return o
}

// SetPayerID adds the payerId to the public normalize payment return url params
func (o *PublicNormalizePaymentReturnURLParams) SetPayerID(payerID *string) {
	o.PayerID = payerID
}

// WithForeinginvoice adds the foreinginvoice to the public normalize payment return url params
func (o *PublicNormalizePaymentReturnURLParams) WithForeinginvoice(foreinginvoice *string) *PublicNormalizePaymentReturnURLParams {
	o.SetForeinginvoice(foreinginvoice)
	return o
}

// SetForeinginvoice adds the foreinginvoice to the public normalize payment return url params
func (o *PublicNormalizePaymentReturnURLParams) SetForeinginvoice(foreinginvoice *string) {
	o.Foreinginvoice = foreinginvoice
}

// WithInvoiceID adds the invoiceID to the public normalize payment return url params
func (o *PublicNormalizePaymentReturnURLParams) WithInvoiceID(invoiceID *string) *PublicNormalizePaymentReturnURLParams {
	o.SetInvoiceID(invoiceID)
	return o
}

// SetInvoiceID adds the invoiceId to the public normalize payment return url params
func (o *PublicNormalizePaymentReturnURLParams) SetInvoiceID(invoiceID *string) {
	o.InvoiceID = invoiceID
}

// WithPayload adds the payload to the public normalize payment return url params
func (o *PublicNormalizePaymentReturnURLParams) WithPayload(payload *string) *PublicNormalizePaymentReturnURLParams {
	o.SetPayload(payload)
	return o
}

// SetPayload adds the payload to the public normalize payment return url params
func (o *PublicNormalizePaymentReturnURLParams) SetPayload(payload *string) {
	o.Payload = payload
}

// WithRedirectResult adds the redirectResult to the public normalize payment return url params
func (o *PublicNormalizePaymentReturnURLParams) WithRedirectResult(redirectResult *string) *PublicNormalizePaymentReturnURLParams {
	o.SetRedirectResult(redirectResult)
	return o
}

// SetRedirectResult adds the redirectResult to the public normalize payment return url params
func (o *PublicNormalizePaymentReturnURLParams) SetRedirectResult(redirectResult *string) {
	o.RedirectResult = redirectResult
}

// WithResultCode adds the resultCode to the public normalize payment return url params
func (o *PublicNormalizePaymentReturnURLParams) WithResultCode(resultCode *string) *PublicNormalizePaymentReturnURLParams {
	o.SetResultCode(resultCode)
	return o
}

// SetResultCode adds the resultCode to the public normalize payment return url params
func (o *PublicNormalizePaymentReturnURLParams) SetResultCode(resultCode *string) {
	o.ResultCode = resultCode
}

// WithSessionID adds the sessionID to the public normalize payment return url params
func (o *PublicNormalizePaymentReturnURLParams) WithSessionID(sessionID *string) *PublicNormalizePaymentReturnURLParams {
	o.SetSessionID(sessionID)
	return o
}

// SetSessionID adds the sessionId to the public normalize payment return url params
func (o *PublicNormalizePaymentReturnURLParams) SetSessionID(sessionID *string) {
	o.SessionID = sessionID
}

// WithStatus adds the status to the public normalize payment return url params
func (o *PublicNormalizePaymentReturnURLParams) WithStatus(status *string) *PublicNormalizePaymentReturnURLParams {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the public normalize payment return url params
func (o *PublicNormalizePaymentReturnURLParams) SetStatus(status *string) {
	o.Status = status
}

// WithToken adds the token to the public normalize payment return url params
func (o *PublicNormalizePaymentReturnURLParams) WithToken(token *string) *PublicNormalizePaymentReturnURLParams {
	o.SetToken(token)
	return o
}

// SetToken adds the token to the public normalize payment return url params
func (o *PublicNormalizePaymentReturnURLParams) SetToken(token *string) {
	o.Token = token
}

// WithType adds the typeVar to the public normalize payment return url params
func (o *PublicNormalizePaymentReturnURLParams) WithType(typeVar *string) *PublicNormalizePaymentReturnURLParams {
	o.SetType(typeVar)
	return o
}

// SetType adds the type to the public normalize payment return url params
func (o *PublicNormalizePaymentReturnURLParams) SetType(typeVar *string) {
	o.Type = typeVar
}

// WithUserID adds the userID to the public normalize payment return url params
func (o *PublicNormalizePaymentReturnURLParams) WithUserID(userID *string) *PublicNormalizePaymentReturnURLParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public normalize payment return url params
func (o *PublicNormalizePaymentReturnURLParams) SetUserID(userID *string) {
	o.UserID = userID
}

// WithOrderNo adds the orderNo to the public normalize payment return url params
func (o *PublicNormalizePaymentReturnURLParams) WithOrderNo(orderNo string) *PublicNormalizePaymentReturnURLParams {
	o.SetOrderNo(orderNo)
	return o
}

// SetOrderNo adds the orderNo to the public normalize payment return url params
func (o *PublicNormalizePaymentReturnURLParams) SetOrderNo(orderNo string) {
	o.OrderNo = orderNo
}

// WithPaymentOrderNo adds the paymentOrderNo to the public normalize payment return url params
func (o *PublicNormalizePaymentReturnURLParams) WithPaymentOrderNo(paymentOrderNo string) *PublicNormalizePaymentReturnURLParams {
	o.SetPaymentOrderNo(paymentOrderNo)
	return o
}

// SetPaymentOrderNo adds the paymentOrderNo to the public normalize payment return url params
func (o *PublicNormalizePaymentReturnURLParams) SetPaymentOrderNo(paymentOrderNo string) {
	o.PaymentOrderNo = paymentOrderNo
}

// WithPaymentProvider adds the paymentProvider to the public normalize payment return url params
func (o *PublicNormalizePaymentReturnURLParams) WithPaymentProvider(paymentProvider string) *PublicNormalizePaymentReturnURLParams {
	o.SetPaymentProvider(paymentProvider)
	return o
}

// SetPaymentProvider adds the paymentProvider to the public normalize payment return url params
func (o *PublicNormalizePaymentReturnURLParams) SetPaymentProvider(paymentProvider string) {
	o.PaymentProvider = paymentProvider
}

// WithReturnURL adds the returnURL to the public normalize payment return url params
func (o *PublicNormalizePaymentReturnURLParams) WithReturnURL(returnURL string) *PublicNormalizePaymentReturnURLParams {
	o.SetReturnURL(returnURL)
	return o
}

// SetReturnURL adds the returnUrl to the public normalize payment return url params
func (o *PublicNormalizePaymentReturnURLParams) SetReturnURL(returnURL string) {
	o.ReturnURL = returnURL
}

// WriteToRequest writes these params to a swagger request
func (o *PublicNormalizePaymentReturnURLParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.PayerID != nil {

		// query param PayerID
		var qrPayerID string
		if o.PayerID != nil {
			qrPayerID = *o.PayerID
		}
		qPayerID := qrPayerID
		if qPayerID != "" {
			if err := r.SetQueryParam("PayerID", qPayerID); err != nil {
				return err
			}
		}

	}

	if o.Foreinginvoice != nil {

		// query param foreinginvoice
		var qrForeinginvoice string
		if o.Foreinginvoice != nil {
			qrForeinginvoice = *o.Foreinginvoice
		}
		qForeinginvoice := qrForeinginvoice
		if qForeinginvoice != "" {
			if err := r.SetQueryParam("foreinginvoice", qForeinginvoice); err != nil {
				return err
			}
		}

	}

	if o.InvoiceID != nil {

		// query param invoice_id
		var qrInvoiceID string
		if o.InvoiceID != nil {
			qrInvoiceID = *o.InvoiceID
		}
		qInvoiceID := qrInvoiceID
		if qInvoiceID != "" {
			if err := r.SetQueryParam("invoice_id", qInvoiceID); err != nil {
				return err
			}
		}

	}

	if o.Payload != nil {

		// query param payload
		var qrPayload string
		if o.Payload != nil {
			qrPayload = *o.Payload
		}
		qPayload := qrPayload
		if qPayload != "" {
			if err := r.SetQueryParam("payload", qPayload); err != nil {
				return err
			}
		}

	}

	if o.RedirectResult != nil {

		// query param redirectResult
		var qrRedirectResult string
		if o.RedirectResult != nil {
			qrRedirectResult = *o.RedirectResult
		}
		qRedirectResult := qrRedirectResult
		if qRedirectResult != "" {
			if err := r.SetQueryParam("redirectResult", qRedirectResult); err != nil {
				return err
			}
		}

	}

	if o.ResultCode != nil {

		// query param resultCode
		var qrResultCode string
		if o.ResultCode != nil {
			qrResultCode = *o.ResultCode
		}
		qResultCode := qrResultCode
		if qResultCode != "" {
			if err := r.SetQueryParam("resultCode", qResultCode); err != nil {
				return err
			}
		}

	}

	if o.SessionID != nil {

		// query param sessionId
		var qrSessionID string
		if o.SessionID != nil {
			qrSessionID = *o.SessionID
		}
		qSessionID := qrSessionID
		if qSessionID != "" {
			if err := r.SetQueryParam("sessionId", qSessionID); err != nil {
				return err
			}
		}

	}

	if o.Status != nil {

		// query param status
		var qrStatus string
		if o.Status != nil {
			qrStatus = *o.Status
		}
		qStatus := qrStatus
		if qStatus != "" {
			if err := r.SetQueryParam("status", qStatus); err != nil {
				return err
			}
		}

	}

	if o.Token != nil {

		// query param token
		var qrToken string
		if o.Token != nil {
			qrToken = *o.Token
		}
		qToken := qrToken
		if qToken != "" {
			if err := r.SetQueryParam("token", qToken); err != nil {
				return err
			}
		}

	}

	if o.Type != nil {

		// query param type
		var qrType string
		if o.Type != nil {
			qrType = *o.Type
		}
		qType := qrType
		if qType != "" {
			if err := r.SetQueryParam("type", qType); err != nil {
				return err
			}
		}

	}

	if o.UserID != nil {

		// query param user_id
		var qrUserID string
		if o.UserID != nil {
			qrUserID = *o.UserID
		}
		qUserID := qrUserID
		if qUserID != "" {
			if err := r.SetQueryParam("user_id", qUserID); err != nil {
				return err
			}
		}

	}

	// query param orderNo
	qrOrderNo := o.OrderNo
	qOrderNo := qrOrderNo
	if qOrderNo != "" {
		if err := r.SetQueryParam("orderNo", qOrderNo); err != nil {
			return err
		}
	}

	// query param paymentOrderNo
	qrPaymentOrderNo := o.PaymentOrderNo
	qPaymentOrderNo := qrPaymentOrderNo
	if qPaymentOrderNo != "" {
		if err := r.SetQueryParam("paymentOrderNo", qPaymentOrderNo); err != nil {
			return err
		}
	}

	// query param paymentProvider
	qrPaymentProvider := o.PaymentProvider
	qPaymentProvider := qrPaymentProvider
	if qPaymentProvider != "" {
		if err := r.SetQueryParam("paymentProvider", qPaymentProvider); err != nil {
			return err
		}
	}

	// query param returnUrl
	qrReturnURL := o.ReturnURL
	qReturnURL := qrReturnURL
	if qReturnURL != "" {
		if err := r.SetQueryParam("returnUrl", qReturnURL); err != nil {
			return err
		}
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
