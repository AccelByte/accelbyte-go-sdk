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
)

// NewDeleteTopicHandlerParams creates a new DeleteTopicHandlerParams object
// with the default values initialized.
func NewDeleteTopicHandlerParams() *DeleteTopicHandlerParams {
	var ()
	return &DeleteTopicHandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteTopicHandlerParamsWithTimeout creates a new DeleteTopicHandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteTopicHandlerParamsWithTimeout(timeout time.Duration) *DeleteTopicHandlerParams {
	var ()
	return &DeleteTopicHandlerParams{

		timeout: timeout,
	}
}

// NewDeleteTopicHandlerParamsWithContext creates a new DeleteTopicHandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteTopicHandlerParamsWithContext(ctx context.Context) *DeleteTopicHandlerParams {
	var ()
	return &DeleteTopicHandlerParams{

		Context: ctx,
	}
}

// NewDeleteTopicHandlerParamsWithHTTPClient creates a new DeleteTopicHandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteTopicHandlerParamsWithHTTPClient(client *http.Client) *DeleteTopicHandlerParams {
	var ()
	return &DeleteTopicHandlerParams{
		HTTPClient: client,
	}
}

/*DeleteTopicHandlerParams contains all the parameters to send to the API endpoint
for the delete topic handler operation typically these are written to a http.Request
*/
type DeleteTopicHandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Game Name

	*/
	Namespace string
	/*TopicName
	  Topic Name

	*/
	TopicName string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the delete topic handler params
func (o *DeleteTopicHandlerParams) WithTimeout(timeout time.Duration) *DeleteTopicHandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete topic handler params
func (o *DeleteTopicHandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete topic handler params
func (o *DeleteTopicHandlerParams) WithContext(ctx context.Context) *DeleteTopicHandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete topic handler params
func (o *DeleteTopicHandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete topic handler params
func (o *DeleteTopicHandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete topic handler params
func (o *DeleteTopicHandlerParams) WithHTTPClient(client *http.Client) *DeleteTopicHandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete topic handler params
func (o *DeleteTopicHandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete topic handler params
func (o *DeleteTopicHandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteTopicHandlerParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the delete topic handler params
func (o *DeleteTopicHandlerParams) WithNamespace(namespace string) *DeleteTopicHandlerParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete topic handler params
func (o *DeleteTopicHandlerParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTopicName adds the topicName to the delete topic handler params
func (o *DeleteTopicHandlerParams) WithTopicName(topicName string) *DeleteTopicHandlerParams {
	o.SetTopicName(topicName)
	return o
}

// SetTopicName adds the topicName to the delete topic handler params
func (o *DeleteTopicHandlerParams) SetTopicName(topicName string) {
	o.TopicName = topicName
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteTopicHandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param topicName
	if err := r.SetPathParam("topicName", o.TopicName); err != nil {
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
