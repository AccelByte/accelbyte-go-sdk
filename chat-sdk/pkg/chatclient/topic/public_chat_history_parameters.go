// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package topic

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NewPublicChatHistoryParams creates a new PublicChatHistoryParams object
// with the default values initialized.
func NewPublicChatHistoryParams() *PublicChatHistoryParams {
	var ()
	return &PublicChatHistoryParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicChatHistoryParamsWithTimeout creates a new PublicChatHistoryParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicChatHistoryParamsWithTimeout(timeout time.Duration) *PublicChatHistoryParams {
	var ()
	return &PublicChatHistoryParams{

		timeout: timeout,
	}
}

// NewPublicChatHistoryParamsWithContext creates a new PublicChatHistoryParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicChatHistoryParamsWithContext(ctx context.Context) *PublicChatHistoryParams {
	var ()
	return &PublicChatHistoryParams{

		Context: ctx,
	}
}

// NewPublicChatHistoryParamsWithHTTPClient creates a new PublicChatHistoryParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicChatHistoryParamsWithHTTPClient(client *http.Client) *PublicChatHistoryParams {
	var ()
	return &PublicChatHistoryParams{
		HTTPClient: client,
	}
}

/*PublicChatHistoryParams contains all the parameters to send to the API endpoint
for the public chat history operation typically these are written to a http.Request
*/
type PublicChatHistoryParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*Topic
	  topic ID that receive the chat

	*/
	Topic string
	/*Limit
	  limit

	*/
	Limit *int64
	/*Order
	  anyof: createdAt:asc / createdAt:desc

	*/
	Order *string
	/*StartCreatedAt
	  lastChatCreatedAt

	*/
	StartCreatedAt *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public chat history params
func (o *PublicChatHistoryParams) WithTimeout(timeout time.Duration) *PublicChatHistoryParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public chat history params
func (o *PublicChatHistoryParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public chat history params
func (o *PublicChatHistoryParams) WithContext(ctx context.Context) *PublicChatHistoryParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public chat history params
func (o *PublicChatHistoryParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public chat history params
func (o *PublicChatHistoryParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public chat history params
func (o *PublicChatHistoryParams) WithHTTPClient(client *http.Client) *PublicChatHistoryParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public chat history params
func (o *PublicChatHistoryParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public chat history params
func (o *PublicChatHistoryParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public chat history params
func (o *PublicChatHistoryParams) WithNamespace(namespace string) *PublicChatHistoryParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public chat history params
func (o *PublicChatHistoryParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTopic adds the topic to the public chat history params
func (o *PublicChatHistoryParams) WithTopic(topic string) *PublicChatHistoryParams {
	o.SetTopic(topic)
	return o
}

// SetTopic adds the topic to the public chat history params
func (o *PublicChatHistoryParams) SetTopic(topic string) {
	o.Topic = topic
}

// WithLimit adds the limit to the public chat history params
func (o *PublicChatHistoryParams) WithLimit(limit *int64) *PublicChatHistoryParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the public chat history params
func (o *PublicChatHistoryParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOrder adds the order to the public chat history params
func (o *PublicChatHistoryParams) WithOrder(order *string) *PublicChatHistoryParams {
	o.SetOrder(order)
	return o
}

// SetOrder adds the order to the public chat history params
func (o *PublicChatHistoryParams) SetOrder(order *string) {
	o.Order = order
}

// WithStartCreatedAt adds the startCreatedAt to the public chat history params
func (o *PublicChatHistoryParams) WithStartCreatedAt(startCreatedAt *int64) *PublicChatHistoryParams {
	o.SetStartCreatedAt(startCreatedAt)
	return o
}

// SetStartCreatedAt adds the startCreatedAt to the public chat history params
func (o *PublicChatHistoryParams) SetStartCreatedAt(startCreatedAt *int64) {
	o.StartCreatedAt = startCreatedAt
}

// WriteToRequest writes these params to a swagger request
func (o *PublicChatHistoryParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param topic
	if err := r.SetPathParam("topic", o.Topic); err != nil {
		return err
	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int64
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt64(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Order != nil {

		// query param order
		var qrOrder string
		if o.Order != nil {
			qrOrder = *o.Order
		}
		qOrder := qrOrder
		if qOrder != "" {
			if err := r.SetQueryParam("order", qOrder); err != nil {
				return err
			}
		}

	}

	if o.StartCreatedAt != nil {

		// query param startCreatedAt
		var qrStartCreatedAt int64
		if o.StartCreatedAt != nil {
			qrStartCreatedAt = *o.StartCreatedAt
		}
		qStartCreatedAt := swag.FormatInt64(qrStartCreatedAt)
		if qStartCreatedAt != "" {
			if err := r.SetQueryParam("startCreatedAt", qStartCreatedAt); err != nil {
				return err
			}
		}

	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
