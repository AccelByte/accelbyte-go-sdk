// Code generated by go-swagger; DO NOT EDIT.

package payment_station

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
	"github.com/go-openapi/swag"
)

// NewGetPaymentPublicConfigParams creates a new GetPaymentPublicConfigParams object
// with the default values initialized.
func NewGetPaymentPublicConfigParams() *GetPaymentPublicConfigParams {
	var (
		sandboxDefault = bool(false)
	)
	return &GetPaymentPublicConfigParams{
		Sandbox: &sandboxDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetPaymentPublicConfigParamsWithTimeout creates a new GetPaymentPublicConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetPaymentPublicConfigParamsWithTimeout(timeout time.Duration) *GetPaymentPublicConfigParams {
	var (
		sandboxDefault = bool(false)
	)
	return &GetPaymentPublicConfigParams{
		Sandbox: &sandboxDefault,

		timeout: timeout,
	}
}

// NewGetPaymentPublicConfigParamsWithContext creates a new GetPaymentPublicConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetPaymentPublicConfigParamsWithContext(ctx context.Context) *GetPaymentPublicConfigParams {
	var (
		sandboxDefault = bool(false)
	)
	return &GetPaymentPublicConfigParams{
		Sandbox: &sandboxDefault,

		Context: ctx,
	}
}

// NewGetPaymentPublicConfigParamsWithHTTPClient creates a new GetPaymentPublicConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetPaymentPublicConfigParamsWithHTTPClient(client *http.Client) *GetPaymentPublicConfigParams {
	var (
		sandboxDefault = bool(false)
	)
	return &GetPaymentPublicConfigParams{
		Sandbox:    &sandboxDefault,
		HTTPClient: client,
	}
}

/*GetPaymentPublicConfigParams contains all the parameters to send to the API endpoint
for the get payment public config operation typically these are written to a http.Request
*/
type GetPaymentPublicConfigParams struct {

	/*Namespace*/
	Namespace string
	/*PaymentProvider*/
	PaymentProvider string
	/*Region*/
	Region string
	/*Sandbox*/
	Sandbox *bool

	timeout    time.Duration
	Context    context.Context
	HTTPClient *http.Client
}

// WithTimeout adds the timeout to the get payment public config params
func (o *GetPaymentPublicConfigParams) WithTimeout(timeout time.Duration) *GetPaymentPublicConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get payment public config params
func (o *GetPaymentPublicConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get payment public config params
func (o *GetPaymentPublicConfigParams) WithContext(ctx context.Context) *GetPaymentPublicConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get payment public config params
func (o *GetPaymentPublicConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// WithHTTPClient adds the HTTPClient to the get payment public config params
func (o *GetPaymentPublicConfigParams) WithHTTPClient(client *http.Client) *GetPaymentPublicConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get payment public config params
func (o *GetPaymentPublicConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithNamespace adds the namespace to the get payment public config params
func (o *GetPaymentPublicConfigParams) WithNamespace(namespace string) *GetPaymentPublicConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get payment public config params
func (o *GetPaymentPublicConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPaymentProvider adds the paymentProvider to the get payment public config params
func (o *GetPaymentPublicConfigParams) WithPaymentProvider(paymentProvider string) *GetPaymentPublicConfigParams {
	o.SetPaymentProvider(paymentProvider)
	return o
}

// SetPaymentProvider adds the paymentProvider to the get payment public config params
func (o *GetPaymentPublicConfigParams) SetPaymentProvider(paymentProvider string) {
	o.PaymentProvider = paymentProvider
}

// WithRegion adds the region to the get payment public config params
func (o *GetPaymentPublicConfigParams) WithRegion(region string) *GetPaymentPublicConfigParams {
	o.SetRegion(region)
	return o
}

// SetRegion adds the region to the get payment public config params
func (o *GetPaymentPublicConfigParams) SetRegion(region string) {
	o.Region = region
}

// WithSandbox adds the sandbox to the get payment public config params
func (o *GetPaymentPublicConfigParams) WithSandbox(sandbox *bool) *GetPaymentPublicConfigParams {
	o.SetSandbox(sandbox)
	return o
}

// SetSandbox adds the sandbox to the get payment public config params
func (o *GetPaymentPublicConfigParams) SetSandbox(sandbox *bool) {
	o.Sandbox = sandbox
}

// WriteToRequest writes these params to a swagger request
func (o *GetPaymentPublicConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// query param paymentProvider
	qrPaymentProvider := o.PaymentProvider
	qPaymentProvider := qrPaymentProvider
	if qPaymentProvider != "" {
		if err := r.SetQueryParam("paymentProvider", qPaymentProvider); err != nil {
			return err
		}
	}

	// query param region
	qrRegion := o.Region
	qRegion := qrRegion
	if qRegion != "" {
		if err := r.SetQueryParam("region", qRegion); err != nil {
			return err
		}
	}

	if o.Sandbox != nil {

		// query param sandbox
		var qrSandbox bool
		if o.Sandbox != nil {
			qrSandbox = *o.Sandbox
		}
		qSandbox := swag.FormatBool(qrSandbox)
		if qSandbox != "" {
			if err := r.SetQueryParam("sandbox", qSandbox); err != nil {
				return err
			}
		}

	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}
