// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmaking

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclientmodels"
)

// NewDequeueSessionHandlerParams creates a new DequeueSessionHandlerParams object
// with the default values initialized.
func NewDequeueSessionHandlerParams() *DequeueSessionHandlerParams {
	var ()
	return &DequeueSessionHandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDequeueSessionHandlerParamsWithTimeout creates a new DequeueSessionHandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDequeueSessionHandlerParamsWithTimeout(timeout time.Duration) *DequeueSessionHandlerParams {
	var ()
	return &DequeueSessionHandlerParams{

		timeout: timeout,
	}
}

// NewDequeueSessionHandlerParamsWithContext creates a new DequeueSessionHandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewDequeueSessionHandlerParamsWithContext(ctx context.Context) *DequeueSessionHandlerParams {
	var ()
	return &DequeueSessionHandlerParams{

		Context: ctx,
	}
}

// NewDequeueSessionHandlerParamsWithHTTPClient creates a new DequeueSessionHandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDequeueSessionHandlerParamsWithHTTPClient(client *http.Client) *DequeueSessionHandlerParams {
	var ()
	return &DequeueSessionHandlerParams{
		HTTPClient: client,
	}
}

/*DequeueSessionHandlerParams contains all the parameters to send to the API endpoint
for the dequeue session handler operation typically these are written to a http.Request
*/
type DequeueSessionHandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *matchmakingclientmodels.ModelsDequeueRequest
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

// WithTimeout adds the timeout to the dequeue session handler params
func (o *DequeueSessionHandlerParams) WithTimeout(timeout time.Duration) *DequeueSessionHandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the dequeue session handler params
func (o *DequeueSessionHandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the dequeue session handler params
func (o *DequeueSessionHandlerParams) WithContext(ctx context.Context) *DequeueSessionHandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the dequeue session handler params
func (o *DequeueSessionHandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the dequeue session handler params
func (o *DequeueSessionHandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the dequeue session handler params
func (o *DequeueSessionHandlerParams) WithHTTPClient(client *http.Client) *DequeueSessionHandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the dequeue session handler params
func (o *DequeueSessionHandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the dequeue session handler params
func (o *DequeueSessionHandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DequeueSessionHandlerParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the dequeue session handler params
func (o *DequeueSessionHandlerParams) WithBody(body *matchmakingclientmodels.ModelsDequeueRequest) *DequeueSessionHandlerParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the dequeue session handler params
func (o *DequeueSessionHandlerParams) SetBody(body *matchmakingclientmodels.ModelsDequeueRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the dequeue session handler params
func (o *DequeueSessionHandlerParams) WithNamespace(namespace string) *DequeueSessionHandlerParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the dequeue session handler params
func (o *DequeueSessionHandlerParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DequeueSessionHandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
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
