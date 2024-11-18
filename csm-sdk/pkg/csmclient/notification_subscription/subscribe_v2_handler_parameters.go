// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package notification_subscription

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclientmodels"
)

// NewSubscribeV2HandlerParams creates a new SubscribeV2HandlerParams object
// with the default values initialized.
func NewSubscribeV2HandlerParams() *SubscribeV2HandlerParams {
	var ()
	return &SubscribeV2HandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSubscribeV2HandlerParamsWithTimeout creates a new SubscribeV2HandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSubscribeV2HandlerParamsWithTimeout(timeout time.Duration) *SubscribeV2HandlerParams {
	var ()
	return &SubscribeV2HandlerParams{

		timeout: timeout,
	}
}

// NewSubscribeV2HandlerParamsWithContext creates a new SubscribeV2HandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewSubscribeV2HandlerParamsWithContext(ctx context.Context) *SubscribeV2HandlerParams {
	var ()
	return &SubscribeV2HandlerParams{

		Context: ctx,
	}
}

// NewSubscribeV2HandlerParamsWithHTTPClient creates a new SubscribeV2HandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSubscribeV2HandlerParamsWithHTTPClient(client *http.Client) *SubscribeV2HandlerParams {
	var ()
	return &SubscribeV2HandlerParams{
		HTTPClient: client,
	}
}

/*SubscribeV2HandlerParams contains all the parameters to send to the API endpoint
for the subscribe v2 handler operation typically these are written to a http.Request
*/
type SubscribeV2HandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *csmclientmodels.ApimodelSelfSubscribeNotificationRequest
	/*App
	  App Name

	*/
	App string
	/*Namespace
	  Game Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the subscribe v2 handler params
func (o *SubscribeV2HandlerParams) WithTimeout(timeout time.Duration) *SubscribeV2HandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the subscribe v2 handler params
func (o *SubscribeV2HandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the subscribe v2 handler params
func (o *SubscribeV2HandlerParams) WithContext(ctx context.Context) *SubscribeV2HandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the subscribe v2 handler params
func (o *SubscribeV2HandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the subscribe v2 handler params
func (o *SubscribeV2HandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the subscribe v2 handler params
func (o *SubscribeV2HandlerParams) WithHTTPClient(client *http.Client) *SubscribeV2HandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the subscribe v2 handler params
func (o *SubscribeV2HandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the subscribe v2 handler params
func (o *SubscribeV2HandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *SubscribeV2HandlerParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the subscribe v2 handler params
func (o *SubscribeV2HandlerParams) WithBody(body *csmclientmodels.ApimodelSelfSubscribeNotificationRequest) *SubscribeV2HandlerParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the subscribe v2 handler params
func (o *SubscribeV2HandlerParams) SetBody(body *csmclientmodels.ApimodelSelfSubscribeNotificationRequest) {
	o.Body = body
}

// WithApp adds the app to the subscribe v2 handler params
func (o *SubscribeV2HandlerParams) WithApp(app string) *SubscribeV2HandlerParams {
	o.SetApp(app)
	return o
}

// SetApp adds the app to the subscribe v2 handler params
func (o *SubscribeV2HandlerParams) SetApp(app string) {
	o.App = app
}

// WithNamespace adds the namespace to the subscribe v2 handler params
func (o *SubscribeV2HandlerParams) WithNamespace(namespace string) *SubscribeV2HandlerParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the subscribe v2 handler params
func (o *SubscribeV2HandlerParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *SubscribeV2HandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

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
