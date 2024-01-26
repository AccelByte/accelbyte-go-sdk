// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package a_m_s_info

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

// NewInfoRegionsParams creates a new InfoRegionsParams object
// with the default values initialized.
func NewInfoRegionsParams() *InfoRegionsParams {
	var ()
	return &InfoRegionsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewInfoRegionsParamsWithTimeout creates a new InfoRegionsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewInfoRegionsParamsWithTimeout(timeout time.Duration) *InfoRegionsParams {
	var ()
	return &InfoRegionsParams{

		timeout: timeout,
	}
}

// NewInfoRegionsParamsWithContext creates a new InfoRegionsParams object
// with the default values initialized, and the ability to set a context for a request
func NewInfoRegionsParamsWithContext(ctx context.Context) *InfoRegionsParams {
	var ()
	return &InfoRegionsParams{

		Context: ctx,
	}
}

// NewInfoRegionsParamsWithHTTPClient creates a new InfoRegionsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewInfoRegionsParamsWithHTTPClient(client *http.Client) *InfoRegionsParams {
	var ()
	return &InfoRegionsParams{
		HTTPClient: client,
	}
}

/*InfoRegionsParams contains all the parameters to send to the API endpoint
for the info regions operation typically these are written to a http.Request
*/
type InfoRegionsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the info regions params
func (o *InfoRegionsParams) WithTimeout(timeout time.Duration) *InfoRegionsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the info regions params
func (o *InfoRegionsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the info regions params
func (o *InfoRegionsParams) WithContext(ctx context.Context) *InfoRegionsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the info regions params
func (o *InfoRegionsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the info regions params
func (o *InfoRegionsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the info regions params
func (o *InfoRegionsParams) WithHTTPClient(client *http.Client) *InfoRegionsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the info regions params
func (o *InfoRegionsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the info regions params
func (o *InfoRegionsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *InfoRegionsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the info regions params
func (o *InfoRegionsParams) WithNamespace(namespace string) *InfoRegionsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the info regions params
func (o *InfoRegionsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *InfoRegionsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
