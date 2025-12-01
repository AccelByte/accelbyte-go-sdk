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

// NewUnsubscribeTopicHandlerParams creates a new UnsubscribeTopicHandlerParams object
// with the default values initialized.
func NewUnsubscribeTopicHandlerParams() *UnsubscribeTopicHandlerParams {
	var ()
	return &UnsubscribeTopicHandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUnsubscribeTopicHandlerParamsWithTimeout creates a new UnsubscribeTopicHandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUnsubscribeTopicHandlerParamsWithTimeout(timeout time.Duration) *UnsubscribeTopicHandlerParams {
	var ()
	return &UnsubscribeTopicHandlerParams{

		timeout: timeout,
	}
}

// NewUnsubscribeTopicHandlerParamsWithContext creates a new UnsubscribeTopicHandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewUnsubscribeTopicHandlerParamsWithContext(ctx context.Context) *UnsubscribeTopicHandlerParams {
	var ()
	return &UnsubscribeTopicHandlerParams{

		Context: ctx,
	}
}

// NewUnsubscribeTopicHandlerParamsWithHTTPClient creates a new UnsubscribeTopicHandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUnsubscribeTopicHandlerParamsWithHTTPClient(client *http.Client) *UnsubscribeTopicHandlerParams {
	var ()
	return &UnsubscribeTopicHandlerParams{
		HTTPClient: client,
	}
}

/*UnsubscribeTopicHandlerParams contains all the parameters to send to the API endpoint
for the unsubscribe topic handler operation typically these are written to a http.Request
*/
type UnsubscribeTopicHandlerParams struct {

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

// WithTimeout adds the timeout to the unsubscribe topic handler params
func (o *UnsubscribeTopicHandlerParams) WithTimeout(timeout time.Duration) *UnsubscribeTopicHandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the unsubscribe topic handler params
func (o *UnsubscribeTopicHandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the unsubscribe topic handler params
func (o *UnsubscribeTopicHandlerParams) WithContext(ctx context.Context) *UnsubscribeTopicHandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the unsubscribe topic handler params
func (o *UnsubscribeTopicHandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the unsubscribe topic handler params
func (o *UnsubscribeTopicHandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the unsubscribe topic handler params
func (o *UnsubscribeTopicHandlerParams) WithHTTPClient(client *http.Client) *UnsubscribeTopicHandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the unsubscribe topic handler params
func (o *UnsubscribeTopicHandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the unsubscribe topic handler params
func (o *UnsubscribeTopicHandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UnsubscribeTopicHandlerParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithApp adds the app to the unsubscribe topic handler params
func (o *UnsubscribeTopicHandlerParams) WithApp(app string) *UnsubscribeTopicHandlerParams {
	o.SetApp(app)
	return o
}

// SetApp adds the app to the unsubscribe topic handler params
func (o *UnsubscribeTopicHandlerParams) SetApp(app string) {
	o.App = app
}

// WithNamespace adds the namespace to the unsubscribe topic handler params
func (o *UnsubscribeTopicHandlerParams) WithNamespace(namespace string) *UnsubscribeTopicHandlerParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the unsubscribe topic handler params
func (o *UnsubscribeTopicHandlerParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTopicName adds the topicName to the unsubscribe topic handler params
func (o *UnsubscribeTopicHandlerParams) WithTopicName(topicName string) *UnsubscribeTopicHandlerParams {
	o.SetTopicName(topicName)
	return o
}

// SetTopicName adds the topicName to the unsubscribe topic handler params
func (o *UnsubscribeTopicHandlerParams) SetTopicName(topicName string) {
	o.TopicName = topicName
}

// WriteToRequest writes these params to a swagger request
func (o *UnsubscribeTopicHandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
