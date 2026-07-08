// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package app_status_progress_v4

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

// NewGetAppStatusProgressV4Params creates a new GetAppStatusProgressV4Params object
// with the default values initialized.
func NewGetAppStatusProgressV4Params() *GetAppStatusProgressV4Params {
	var ()
	return &GetAppStatusProgressV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetAppStatusProgressV4ParamsWithTimeout creates a new GetAppStatusProgressV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetAppStatusProgressV4ParamsWithTimeout(timeout time.Duration) *GetAppStatusProgressV4Params {
	var ()
	return &GetAppStatusProgressV4Params{

		timeout: timeout,
	}
}

// NewGetAppStatusProgressV4ParamsWithContext creates a new GetAppStatusProgressV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetAppStatusProgressV4ParamsWithContext(ctx context.Context) *GetAppStatusProgressV4Params {
	var ()
	return &GetAppStatusProgressV4Params{

		Context: ctx,
	}
}

// NewGetAppStatusProgressV4ParamsWithHTTPClient creates a new GetAppStatusProgressV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetAppStatusProgressV4ParamsWithHTTPClient(client *http.Client) *GetAppStatusProgressV4Params {
	var ()
	return &GetAppStatusProgressV4Params{
		HTTPClient: client,
	}
}

/*GetAppStatusProgressV4Params contains all the parameters to send to the API endpoint
for the get app status progress v4 operation typically these are written to a http.Request
*/
type GetAppStatusProgressV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*App
	  App Name

	*/
	App string
	/*Namespace
	  Game Name

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get app status progress v4 params
func (o *GetAppStatusProgressV4Params) WithTimeout(timeout time.Duration) *GetAppStatusProgressV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get app status progress v4 params
func (o *GetAppStatusProgressV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get app status progress v4 params
func (o *GetAppStatusProgressV4Params) WithContext(ctx context.Context) *GetAppStatusProgressV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get app status progress v4 params
func (o *GetAppStatusProgressV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get app status progress v4 params
func (o *GetAppStatusProgressV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get app status progress v4 params
func (o *GetAppStatusProgressV4Params) WithHTTPClient(client *http.Client) *GetAppStatusProgressV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get app status progress v4 params
func (o *GetAppStatusProgressV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get app status progress v4 params
func (o *GetAppStatusProgressV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetAppStatusProgressV4Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithApp adds the app to the get app status progress v4 params
func (o *GetAppStatusProgressV4Params) WithApp(app string) *GetAppStatusProgressV4Params {
	o.SetApp(app)
	return o
}

// SetApp adds the app to the get app status progress v4 params
func (o *GetAppStatusProgressV4Params) SetApp(app string) {
	o.App = app
}

// WithNamespace adds the namespace to the get app status progress v4 params
func (o *GetAppStatusProgressV4Params) WithNamespace(namespace string) *GetAppStatusProgressV4Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get app status progress v4 params
func (o *GetAppStatusProgressV4Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetAppStatusProgressV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param app
	if err := r.SetPathParam("app", o.App); err != nil {
		return err
	}

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
