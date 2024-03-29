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

// NewGetTopicByTopicNameParams creates a new GetTopicByTopicNameParams object
// with the default values initialized.
func NewGetTopicByTopicNameParams() *GetTopicByTopicNameParams {
	var ()
	return &GetTopicByTopicNameParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetTopicByTopicNameParamsWithTimeout creates a new GetTopicByTopicNameParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetTopicByTopicNameParamsWithTimeout(timeout time.Duration) *GetTopicByTopicNameParams {
	var ()
	return &GetTopicByTopicNameParams{

		timeout: timeout,
	}
}

// NewGetTopicByTopicNameParamsWithContext creates a new GetTopicByTopicNameParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetTopicByTopicNameParamsWithContext(ctx context.Context) *GetTopicByTopicNameParams {
	var ()
	return &GetTopicByTopicNameParams{

		Context: ctx,
	}
}

// NewGetTopicByTopicNameParamsWithHTTPClient creates a new GetTopicByTopicNameParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetTopicByTopicNameParamsWithHTTPClient(client *http.Client) *GetTopicByTopicNameParams {
	var ()
	return &GetTopicByTopicNameParams{
		HTTPClient: client,
	}
}

/*GetTopicByTopicNameParams contains all the parameters to send to the API endpoint
for the get topic by topic name operation typically these are written to a http.Request
*/
type GetTopicByTopicNameParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*Topic
	  topic name

	*/
	Topic string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get topic by topic name params
func (o *GetTopicByTopicNameParams) WithTimeout(timeout time.Duration) *GetTopicByTopicNameParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get topic by topic name params
func (o *GetTopicByTopicNameParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get topic by topic name params
func (o *GetTopicByTopicNameParams) WithContext(ctx context.Context) *GetTopicByTopicNameParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get topic by topic name params
func (o *GetTopicByTopicNameParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get topic by topic name params
func (o *GetTopicByTopicNameParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get topic by topic name params
func (o *GetTopicByTopicNameParams) WithHTTPClient(client *http.Client) *GetTopicByTopicNameParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get topic by topic name params
func (o *GetTopicByTopicNameParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get topic by topic name params
func (o *GetTopicByTopicNameParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetTopicByTopicNameParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get topic by topic name params
func (o *GetTopicByTopicNameParams) WithNamespace(namespace string) *GetTopicByTopicNameParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get topic by topic name params
func (o *GetTopicByTopicNameParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTopic adds the topic to the get topic by topic name params
func (o *GetTopicByTopicNameParams) WithTopic(topic string) *GetTopicByTopicNameParams {
	o.SetTopic(topic)
	return o
}

// SetTopic adds the topic to the get topic by topic name params
func (o *GetTopicByTopicNameParams) SetTopic(topic string) {
	o.Topic = topic
}

// WriteToRequest writes these params to a swagger request
func (o *GetTopicByTopicNameParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
