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

// Deprecated: 2025-07-16 - Use ListCurrenciesCurrencyType<EnumValue>Constant instead.
// Get the enum in ListCurrenciesParams
const (
	ListCurrenciesREALConstant    = "REAL"
	ListCurrenciesVIRTUALConstant = "VIRTUAL"
)

// Get the enum in ListCurrenciesParams
const (
	ListCurrenciesCurrencyTypeREALConstant    = "REAL"
	ListCurrenciesCurrencyTypeVIRTUALConstant = "VIRTUAL"
)

// NewListCurrenciesParams creates a new ListCurrenciesParams object
// with the default values initialized.
func NewListCurrenciesParams() *ListCurrenciesParams {
	var ()
	return &ListCurrenciesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewListCurrenciesParamsWithTimeout creates a new ListCurrenciesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewListCurrenciesParamsWithTimeout(timeout time.Duration) *ListCurrenciesParams {
	var ()
	return &ListCurrenciesParams{

		timeout: timeout,
	}
}

// NewListCurrenciesParamsWithContext creates a new ListCurrenciesParams object
// with the default values initialized, and the ability to set a context for a request
func NewListCurrenciesParamsWithContext(ctx context.Context) *ListCurrenciesParams {
	var ()
	return &ListCurrenciesParams{

		Context: ctx,
	}
}

// NewListCurrenciesParamsWithHTTPClient creates a new ListCurrenciesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewListCurrenciesParamsWithHTTPClient(client *http.Client) *ListCurrenciesParams {
	var ()
	return &ListCurrenciesParams{
		HTTPClient: client,
	}
}

/*ListCurrenciesParams contains all the parameters to send to the API endpoint
for the list currencies operation typically these are written to a http.Request
*/
type ListCurrenciesParams struct {

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

// WithTimeout adds the timeout to the list currencies params
func (o *ListCurrenciesParams) WithTimeout(timeout time.Duration) *ListCurrenciesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the list currencies params
func (o *ListCurrenciesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the list currencies params
func (o *ListCurrenciesParams) WithContext(ctx context.Context) *ListCurrenciesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the list currencies params
func (o *ListCurrenciesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the list currencies params
func (o *ListCurrenciesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the list currencies params
func (o *ListCurrenciesParams) WithHTTPClient(client *http.Client) *ListCurrenciesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the list currencies params
func (o *ListCurrenciesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the list currencies params
func (o *ListCurrenciesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ListCurrenciesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the list currencies params
func (o *ListCurrenciesParams) WithNamespace(namespace string) *ListCurrenciesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the list currencies params
func (o *ListCurrenciesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithCurrencyType adds the currencyType to the list currencies params
func (o *ListCurrenciesParams) WithCurrencyType(currencyType *string) *ListCurrenciesParams {
	o.SetCurrencyType(currencyType)
	return o
}

// SetCurrencyType adds the currencyType to the list currencies params
func (o *ListCurrenciesParams) SetCurrencyType(currencyType *string) {
	o.CurrencyType = currencyType
}

// WriteToRequest writes these params to a swagger request
func (o *ListCurrenciesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
