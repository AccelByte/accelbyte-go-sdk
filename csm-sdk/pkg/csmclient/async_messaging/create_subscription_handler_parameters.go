// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package async_messaging

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

// NewCreateSubscriptionHandlerParams creates a new CreateSubscriptionHandlerParams object
// with the default values initialized.
func NewCreateSubscriptionHandlerParams() *CreateSubscriptionHandlerParams {
	var ()
	return &CreateSubscriptionHandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateSubscriptionHandlerParamsWithTimeout creates a new CreateSubscriptionHandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateSubscriptionHandlerParamsWithTimeout(timeout time.Duration) *CreateSubscriptionHandlerParams {
	var ()
	return &CreateSubscriptionHandlerParams{

		timeout: timeout,
	}
}

// NewCreateSubscriptionHandlerParamsWithContext creates a new CreateSubscriptionHandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateSubscriptionHandlerParamsWithContext(ctx context.Context) *CreateSubscriptionHandlerParams {
	var ()
	return &CreateSubscriptionHandlerParams{

		Context: ctx,
	}
}

// NewCreateSubscriptionHandlerParamsWithHTTPClient creates a new CreateSubscriptionHandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateSubscriptionHandlerParamsWithHTTPClient(client *http.Client) *CreateSubscriptionHandlerParams {
	var ()
	return &CreateSubscriptionHandlerParams{
		HTTPClient: client,
	}
}

/*CreateSubscriptionHandlerParams contains all the parameters to send to the API endpoint
for the create subscription handler operation typically these are written to a http.Request
*/
type CreateSubscriptionHandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *csmclientmodels.ApimodelCreateSubscriptionRequest
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

// WithTimeout adds the timeout to the create subscription handler params
func (o *CreateSubscriptionHandlerParams) WithTimeout(timeout time.Duration) *CreateSubscriptionHandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create subscription handler params
func (o *CreateSubscriptionHandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create subscription handler params
func (o *CreateSubscriptionHandlerParams) WithContext(ctx context.Context) *CreateSubscriptionHandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create subscription handler params
func (o *CreateSubscriptionHandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create subscription handler params
func (o *CreateSubscriptionHandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create subscription handler params
func (o *CreateSubscriptionHandlerParams) WithHTTPClient(client *http.Client) *CreateSubscriptionHandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create subscription handler params
func (o *CreateSubscriptionHandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create subscription handler params
func (o *CreateSubscriptionHandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CreateSubscriptionHandlerParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the create subscription handler params
func (o *CreateSubscriptionHandlerParams) WithBody(body *csmclientmodels.ApimodelCreateSubscriptionRequest) *CreateSubscriptionHandlerParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create subscription handler params
func (o *CreateSubscriptionHandlerParams) SetBody(body *csmclientmodels.ApimodelCreateSubscriptionRequest) {
	o.Body = body
}

// WithApp adds the app to the create subscription handler params
func (o *CreateSubscriptionHandlerParams) WithApp(app string) *CreateSubscriptionHandlerParams {
	o.SetApp(app)
	return o
}

// SetApp adds the app to the create subscription handler params
func (o *CreateSubscriptionHandlerParams) SetApp(app string) {
	o.App = app
}

// WithNamespace adds the namespace to the create subscription handler params
func (o *CreateSubscriptionHandlerParams) WithNamespace(namespace string) *CreateSubscriptionHandlerParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create subscription handler params
func (o *CreateSubscriptionHandlerParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *CreateSubscriptionHandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
