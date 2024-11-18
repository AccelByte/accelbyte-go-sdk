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
)

// NewGetSubscriptionV2HandlerParams creates a new GetSubscriptionV2HandlerParams object
// with the default values initialized.
func NewGetSubscriptionV2HandlerParams() *GetSubscriptionV2HandlerParams {
	var ()
	return &GetSubscriptionV2HandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetSubscriptionV2HandlerParamsWithTimeout creates a new GetSubscriptionV2HandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetSubscriptionV2HandlerParamsWithTimeout(timeout time.Duration) *GetSubscriptionV2HandlerParams {
	var ()
	return &GetSubscriptionV2HandlerParams{

		timeout: timeout,
	}
}

// NewGetSubscriptionV2HandlerParamsWithContext creates a new GetSubscriptionV2HandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetSubscriptionV2HandlerParamsWithContext(ctx context.Context) *GetSubscriptionV2HandlerParams {
	var ()
	return &GetSubscriptionV2HandlerParams{

		Context: ctx,
	}
}

// NewGetSubscriptionV2HandlerParamsWithHTTPClient creates a new GetSubscriptionV2HandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetSubscriptionV2HandlerParamsWithHTTPClient(client *http.Client) *GetSubscriptionV2HandlerParams {
	var ()
	return &GetSubscriptionV2HandlerParams{
		HTTPClient: client,
	}
}

/*GetSubscriptionV2HandlerParams contains all the parameters to send to the API endpoint
for the get subscription v2 handler operation typically these are written to a http.Request
*/
type GetSubscriptionV2HandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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

// WithTimeout adds the timeout to the get subscription v2 handler params
func (o *GetSubscriptionV2HandlerParams) WithTimeout(timeout time.Duration) *GetSubscriptionV2HandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get subscription v2 handler params
func (o *GetSubscriptionV2HandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get subscription v2 handler params
func (o *GetSubscriptionV2HandlerParams) WithContext(ctx context.Context) *GetSubscriptionV2HandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get subscription v2 handler params
func (o *GetSubscriptionV2HandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get subscription v2 handler params
func (o *GetSubscriptionV2HandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get subscription v2 handler params
func (o *GetSubscriptionV2HandlerParams) WithHTTPClient(client *http.Client) *GetSubscriptionV2HandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get subscription v2 handler params
func (o *GetSubscriptionV2HandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get subscription v2 handler params
func (o *GetSubscriptionV2HandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetSubscriptionV2HandlerParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithApp adds the app to the get subscription v2 handler params
func (o *GetSubscriptionV2HandlerParams) WithApp(app string) *GetSubscriptionV2HandlerParams {
	o.SetApp(app)
	return o
}

// SetApp adds the app to the get subscription v2 handler params
func (o *GetSubscriptionV2HandlerParams) SetApp(app string) {
	o.App = app
}

// WithNamespace adds the namespace to the get subscription v2 handler params
func (o *GetSubscriptionV2HandlerParams) WithNamespace(namespace string) *GetSubscriptionV2HandlerParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get subscription v2 handler params
func (o *GetSubscriptionV2HandlerParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetSubscriptionV2HandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
