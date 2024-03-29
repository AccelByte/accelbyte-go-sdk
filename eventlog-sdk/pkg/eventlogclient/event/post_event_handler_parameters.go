// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package event

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclientmodels"
)

// NewPostEventHandlerParams creates a new PostEventHandlerParams object
// with the default values initialized.
func NewPostEventHandlerParams() *PostEventHandlerParams {
	var ()
	return &PostEventHandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPostEventHandlerParamsWithTimeout creates a new PostEventHandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPostEventHandlerParamsWithTimeout(timeout time.Duration) *PostEventHandlerParams {
	var ()
	return &PostEventHandlerParams{

		timeout: timeout,
	}
}

// NewPostEventHandlerParamsWithContext creates a new PostEventHandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewPostEventHandlerParamsWithContext(ctx context.Context) *PostEventHandlerParams {
	var ()
	return &PostEventHandlerParams{

		Context: ctx,
	}
}

// NewPostEventHandlerParamsWithHTTPClient creates a new PostEventHandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPostEventHandlerParamsWithHTTPClient(client *http.Client) *PostEventHandlerParams {
	var ()
	return &PostEventHandlerParams{
		HTTPClient: client,
	}
}

/*PostEventHandlerParams contains all the parameters to send to the API endpoint
for the post event handler operation typically these are written to a http.Request
*/
type PostEventHandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *eventlogclientmodels.ModelsEvent
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

// WithTimeout adds the timeout to the post event handler params
func (o *PostEventHandlerParams) WithTimeout(timeout time.Duration) *PostEventHandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the post event handler params
func (o *PostEventHandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the post event handler params
func (o *PostEventHandlerParams) WithContext(ctx context.Context) *PostEventHandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the post event handler params
func (o *PostEventHandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the post event handler params
func (o *PostEventHandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the post event handler params
func (o *PostEventHandlerParams) WithHTTPClient(client *http.Client) *PostEventHandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the post event handler params
func (o *PostEventHandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the post event handler params
func (o *PostEventHandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PostEventHandlerParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the post event handler params
func (o *PostEventHandlerParams) WithBody(body *eventlogclientmodels.ModelsEvent) *PostEventHandlerParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the post event handler params
func (o *PostEventHandlerParams) SetBody(body *eventlogclientmodels.ModelsEvent) {
	o.Body = body
}

// WithNamespace adds the namespace to the post event handler params
func (o *PostEventHandlerParams) WithNamespace(namespace string) *PostEventHandlerParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the post event handler params
func (o *PostEventHandlerParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PostEventHandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
