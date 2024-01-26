// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package misc

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

// NewGetCountriesParams creates a new GetCountriesParams object
// with the default values initialized.
func NewGetCountriesParams() *GetCountriesParams {
	var (
		langDefault = string("en")
	)
	return &GetCountriesParams{
		Lang: &langDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetCountriesParamsWithTimeout creates a new GetCountriesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetCountriesParamsWithTimeout(timeout time.Duration) *GetCountriesParams {
	var (
		langDefault = string("en")
	)
	return &GetCountriesParams{
		Lang: &langDefault,

		timeout: timeout,
	}
}

// NewGetCountriesParamsWithContext creates a new GetCountriesParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetCountriesParamsWithContext(ctx context.Context) *GetCountriesParams {
	var (
		langDefault = string("en")
	)
	return &GetCountriesParams{
		Lang: &langDefault,

		Context: ctx,
	}
}

// NewGetCountriesParamsWithHTTPClient creates a new GetCountriesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetCountriesParamsWithHTTPClient(client *http.Client) *GetCountriesParams {
	var (
		langDefault = string("en")
	)
	return &GetCountriesParams{
		Lang:       &langDefault,
		HTTPClient: client,
	}
}

/*GetCountriesParams contains all the parameters to send to the API endpoint
for the get countries operation typically these are written to a http.Request
*/
type GetCountriesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*Lang
	  language value from language tag, allowed format: en, en-US

	*/
	Lang *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get countries params
func (o *GetCountriesParams) WithTimeout(timeout time.Duration) *GetCountriesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get countries params
func (o *GetCountriesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get countries params
func (o *GetCountriesParams) WithContext(ctx context.Context) *GetCountriesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get countries params
func (o *GetCountriesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get countries params
func (o *GetCountriesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get countries params
func (o *GetCountriesParams) WithHTTPClient(client *http.Client) *GetCountriesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get countries params
func (o *GetCountriesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get countries params
func (o *GetCountriesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetCountriesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get countries params
func (o *GetCountriesParams) WithNamespace(namespace string) *GetCountriesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get countries params
func (o *GetCountriesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLang adds the lang to the get countries params
func (o *GetCountriesParams) WithLang(lang *string) *GetCountriesParams {
	o.SetLang(lang)
	return o
}

// SetLang adds the lang to the get countries params
func (o *GetCountriesParams) SetLang(lang *string) {
	o.Lang = lang
}

// WriteToRequest writes these params to a swagger request
func (o *GetCountriesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Lang != nil {

		// query param lang
		var qrLang string
		if o.Lang != nil {
			qrLang = *o.Lang
		}
		qLang := qrLang
		if qLang != "" {
			if err := r.SetQueryParam("lang", qLang); err != nil {
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
