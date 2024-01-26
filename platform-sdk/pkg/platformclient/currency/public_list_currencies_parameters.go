// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package currency

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

// Get the enum in PublicListCurrenciesParams
const (
	PublicListCurrenciesREALConstant    = "REAL"
	PublicListCurrenciesVIRTUALConstant = "VIRTUAL"
)

// NewPublicListCurrenciesParams creates a new PublicListCurrenciesParams object
// with the default values initialized.
func NewPublicListCurrenciesParams() *PublicListCurrenciesParams {
	var ()
	return &PublicListCurrenciesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicListCurrenciesParamsWithTimeout creates a new PublicListCurrenciesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicListCurrenciesParamsWithTimeout(timeout time.Duration) *PublicListCurrenciesParams {
	var ()
	return &PublicListCurrenciesParams{

		timeout: timeout,
	}
}

// NewPublicListCurrenciesParamsWithContext creates a new PublicListCurrenciesParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicListCurrenciesParamsWithContext(ctx context.Context) *PublicListCurrenciesParams {
	var ()
	return &PublicListCurrenciesParams{

		Context: ctx,
	}
}

// NewPublicListCurrenciesParamsWithHTTPClient creates a new PublicListCurrenciesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicListCurrenciesParamsWithHTTPClient(client *http.Client) *PublicListCurrenciesParams {
	var ()
	return &PublicListCurrenciesParams{
		HTTPClient: client,
	}
}

/*PublicListCurrenciesParams contains all the parameters to send to the API endpoint
for the public list currencies operation typically these are written to a http.Request
*/
type PublicListCurrenciesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*CurrencyType
	  currencyType

	*/
	CurrencyType *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public list currencies params
func (o *PublicListCurrenciesParams) WithTimeout(timeout time.Duration) *PublicListCurrenciesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public list currencies params
func (o *PublicListCurrenciesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public list currencies params
func (o *PublicListCurrenciesParams) WithContext(ctx context.Context) *PublicListCurrenciesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public list currencies params
func (o *PublicListCurrenciesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public list currencies params
func (o *PublicListCurrenciesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public list currencies params
func (o *PublicListCurrenciesParams) WithHTTPClient(client *http.Client) *PublicListCurrenciesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public list currencies params
func (o *PublicListCurrenciesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public list currencies params
func (o *PublicListCurrenciesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicListCurrenciesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public list currencies params
func (o *PublicListCurrenciesParams) WithNamespace(namespace string) *PublicListCurrenciesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public list currencies params
func (o *PublicListCurrenciesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithCurrencyType adds the currencyType to the public list currencies params
func (o *PublicListCurrenciesParams) WithCurrencyType(currencyType *string) *PublicListCurrenciesParams {
	o.SetCurrencyType(currencyType)
	return o
}

// SetCurrencyType adds the currencyType to the public list currencies params
func (o *PublicListCurrenciesParams) SetCurrencyType(currencyType *string) {
	o.CurrencyType = currencyType
}

// WriteToRequest writes these params to a swagger request
func (o *PublicListCurrenciesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.CurrencyType != nil {

		// query param currencyType
		var qrCurrencyType string
		if o.CurrencyType != nil {
			qrCurrencyType = *o.CurrencyType
		}
		qCurrencyType := qrCurrencyType
		if qCurrencyType != "" {
			if err := r.SetQueryParam("currencyType", qCurrencyType); err != nil {
				return err
			}
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
