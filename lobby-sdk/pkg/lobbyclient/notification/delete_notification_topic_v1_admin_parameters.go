// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package notification

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

// NewDeleteNotificationTopicV1AdminParams creates a new DeleteNotificationTopicV1AdminParams object
// with the default values initialized.
func NewDeleteNotificationTopicV1AdminParams() *DeleteNotificationTopicV1AdminParams {
	var ()
	return &DeleteNotificationTopicV1AdminParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteNotificationTopicV1AdminParamsWithTimeout creates a new DeleteNotificationTopicV1AdminParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteNotificationTopicV1AdminParamsWithTimeout(timeout time.Duration) *DeleteNotificationTopicV1AdminParams {
	var ()
	return &DeleteNotificationTopicV1AdminParams{

		timeout: timeout,
	}
}

// NewDeleteNotificationTopicV1AdminParamsWithContext creates a new DeleteNotificationTopicV1AdminParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteNotificationTopicV1AdminParamsWithContext(ctx context.Context) *DeleteNotificationTopicV1AdminParams {
	var ()
	return &DeleteNotificationTopicV1AdminParams{

		Context: ctx,
	}
}

// NewDeleteNotificationTopicV1AdminParamsWithHTTPClient creates a new DeleteNotificationTopicV1AdminParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteNotificationTopicV1AdminParamsWithHTTPClient(client *http.Client) *DeleteNotificationTopicV1AdminParams {
	var ()
	return &DeleteNotificationTopicV1AdminParams{
		HTTPClient: client,
	}
}

/*DeleteNotificationTopicV1AdminParams contains all the parameters to send to the API endpoint
for the delete notification topic v1 admin operation typically these are written to a http.Request
*/
type DeleteNotificationTopicV1AdminParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*TopicName
	  topic name

	*/
	TopicName string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the delete notification topic v1 admin params
func (o *DeleteNotificationTopicV1AdminParams) WithTimeout(timeout time.Duration) *DeleteNotificationTopicV1AdminParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete notification topic v1 admin params
func (o *DeleteNotificationTopicV1AdminParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete notification topic v1 admin params
func (o *DeleteNotificationTopicV1AdminParams) WithContext(ctx context.Context) *DeleteNotificationTopicV1AdminParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete notification topic v1 admin params
func (o *DeleteNotificationTopicV1AdminParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete notification topic v1 admin params
func (o *DeleteNotificationTopicV1AdminParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete notification topic v1 admin params
func (o *DeleteNotificationTopicV1AdminParams) WithHTTPClient(client *http.Client) *DeleteNotificationTopicV1AdminParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete notification topic v1 admin params
func (o *DeleteNotificationTopicV1AdminParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete notification topic v1 admin params
func (o *DeleteNotificationTopicV1AdminParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteNotificationTopicV1AdminParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the delete notification topic v1 admin params
func (o *DeleteNotificationTopicV1AdminParams) WithNamespace(namespace string) *DeleteNotificationTopicV1AdminParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete notification topic v1 admin params
func (o *DeleteNotificationTopicV1AdminParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTopicName adds the topicName to the delete notification topic v1 admin params
func (o *DeleteNotificationTopicV1AdminParams) WithTopicName(topicName string) *DeleteNotificationTopicV1AdminParams {
	o.SetTopicName(topicName)
	return o
}

// SetTopicName adds the topicName to the delete notification topic v1 admin params
func (o *DeleteNotificationTopicV1AdminParams) SetTopicName(topicName string) {
	o.TopicName = topicName
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteNotificationTopicV1AdminParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
