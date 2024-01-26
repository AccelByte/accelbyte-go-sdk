// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

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

// NewGetListCountryAgeRestrictionParams creates a new GetListCountryAgeRestrictionParams object
// with the default values initialized.
func NewGetListCountryAgeRestrictionParams() *GetListCountryAgeRestrictionParams {
	var ()
	return &GetListCountryAgeRestrictionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetListCountryAgeRestrictionParamsWithTimeout creates a new GetListCountryAgeRestrictionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetListCountryAgeRestrictionParamsWithTimeout(timeout time.Duration) *GetListCountryAgeRestrictionParams {
	var ()
	return &GetListCountryAgeRestrictionParams{

		timeout: timeout,
	}
}

// NewGetListCountryAgeRestrictionParamsWithContext creates a new GetListCountryAgeRestrictionParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetListCountryAgeRestrictionParamsWithContext(ctx context.Context) *GetListCountryAgeRestrictionParams {
	var ()
	return &GetListCountryAgeRestrictionParams{

		Context: ctx,
	}
}

// NewGetListCountryAgeRestrictionParamsWithHTTPClient creates a new GetListCountryAgeRestrictionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetListCountryAgeRestrictionParamsWithHTTPClient(client *http.Client) *GetListCountryAgeRestrictionParams {
	var ()
	return &GetListCountryAgeRestrictionParams{
		HTTPClient: client,
	}
}

/*GetListCountryAgeRestrictionParams contains all the parameters to send to the API endpoint
for the get list country age restriction operation typically these are written to a http.Request
*/
type GetListCountryAgeRestrictionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get list country age restriction params
func (o *GetListCountryAgeRestrictionParams) WithTimeout(timeout time.Duration) *GetListCountryAgeRestrictionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get list country age restriction params
func (o *GetListCountryAgeRestrictionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get list country age restriction params
func (o *GetListCountryAgeRestrictionParams) WithContext(ctx context.Context) *GetListCountryAgeRestrictionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get list country age restriction params
func (o *GetListCountryAgeRestrictionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get list country age restriction params
func (o *GetListCountryAgeRestrictionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get list country age restriction params
func (o *GetListCountryAgeRestrictionParams) WithHTTPClient(client *http.Client) *GetListCountryAgeRestrictionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get list country age restriction params
func (o *GetListCountryAgeRestrictionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get list country age restriction params
func (o *GetListCountryAgeRestrictionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetListCountryAgeRestrictionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get list country age restriction params
func (o *GetListCountryAgeRestrictionParams) WithNamespace(namespace string) *GetListCountryAgeRestrictionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get list country age restriction params
func (o *GetListCountryAgeRestrictionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetListCountryAgeRestrictionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
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
