// Code generated by go-swagger; DO NOT EDIT.

package wallet

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"net/http"
	"time"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewCreditUserWalletParams creates a new CreditUserWalletParams object
// with the default values initialized.
func NewCreditUserWalletParams() *CreditUserWalletParams {
	var ()
	return &CreditUserWalletParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreditUserWalletParamsWithTimeout creates a new CreditUserWalletParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreditUserWalletParamsWithTimeout(timeout time.Duration) *CreditUserWalletParams {
	var ()
	return &CreditUserWalletParams{

		timeout: timeout,
	}
}

// NewCreditUserWalletParamsWithContext creates a new CreditUserWalletParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreditUserWalletParamsWithContext(ctx context.Context) *CreditUserWalletParams {
	var ()
	return &CreditUserWalletParams{

		Context: ctx,
	}
}

// NewCreditUserWalletParamsWithHTTPClient creates a new CreditUserWalletParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreditUserWalletParamsWithHTTPClient(client *http.Client) *CreditUserWalletParams {
	var ()
	return &CreditUserWalletParams{
		HTTPClient: client,
	}
}

/*CreditUserWalletParams contains all the parameters to send to the API endpoint
for the credit user wallet operation typically these are written to a http.Request
*/
type CreditUserWalletParams struct {

	/*Body*/
	Body *platformclientmodels.CreditRequest
	/*CurrencyCode*/
	CurrencyCode string
	/*Namespace
	  namespace

	*/
	Namespace string
	/*UserID
	  userId

	*/
	UserID string

	timeout    time.Duration
	Context    context.Context
	HTTPClient *http.Client
}

// WithTimeout adds the timeout to the credit user wallet params
func (o *CreditUserWalletParams) WithTimeout(timeout time.Duration) *CreditUserWalletParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the credit user wallet params
func (o *CreditUserWalletParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the credit user wallet params
func (o *CreditUserWalletParams) WithContext(ctx context.Context) *CreditUserWalletParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the credit user wallet params
func (o *CreditUserWalletParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// WithHTTPClient adds the HTTPClient to the credit user wallet params
func (o *CreditUserWalletParams) WithHTTPClient(client *http.Client) *CreditUserWalletParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the credit user wallet params
func (o *CreditUserWalletParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithBody adds the body to the credit user wallet params
func (o *CreditUserWalletParams) WithBody(body *platformclientmodels.CreditRequest) *CreditUserWalletParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the credit user wallet params
func (o *CreditUserWalletParams) SetBody(body *platformclientmodels.CreditRequest) {
	o.Body = body
}

// WithCurrencyCode adds the currencyCode to the credit user wallet params
func (o *CreditUserWalletParams) WithCurrencyCode(currencyCode string) *CreditUserWalletParams {
	o.SetCurrencyCode(currencyCode)
	return o
}

// SetCurrencyCode adds the currencyCode to the credit user wallet params
func (o *CreditUserWalletParams) SetCurrencyCode(currencyCode string) {
	o.CurrencyCode = currencyCode
}

// WithNamespace adds the namespace to the credit user wallet params
func (o *CreditUserWalletParams) WithNamespace(namespace string) *CreditUserWalletParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the credit user wallet params
func (o *CreditUserWalletParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the credit user wallet params
func (o *CreditUserWalletParams) WithUserID(userID string) *CreditUserWalletParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the credit user wallet params
func (o *CreditUserWalletParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *CreditUserWalletParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param currencyCode
	if err := r.SetPathParam("currencyCode", o.CurrencyCode); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}
