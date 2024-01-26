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

// NewAdminChannelTopicListParams creates a new AdminChannelTopicListParams object
// with the default values initialized.
func NewAdminChannelTopicListParams() *AdminChannelTopicListParams {
	var ()
	return &AdminChannelTopicListParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminChannelTopicListParamsWithTimeout creates a new AdminChannelTopicListParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminChannelTopicListParamsWithTimeout(timeout time.Duration) *AdminChannelTopicListParams {
	var ()
	return &AdminChannelTopicListParams{

		timeout: timeout,
	}
}

// NewAdminChannelTopicListParamsWithContext creates a new AdminChannelTopicListParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminChannelTopicListParamsWithContext(ctx context.Context) *AdminChannelTopicListParams {
	var ()
	return &AdminChannelTopicListParams{

		Context: ctx,
	}
}

// NewAdminChannelTopicListParamsWithHTTPClient creates a new AdminChannelTopicListParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminChannelTopicListParamsWithHTTPClient(client *http.Client) *AdminChannelTopicListParams {
	var ()
	return &AdminChannelTopicListParams{
		HTTPClient: client,
	}
}

/*AdminChannelTopicListParams contains all the parameters to send to the API endpoint
for the admin channel topic list operation typically these are written to a http.Request
*/
type AdminChannelTopicListParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*Limit
	  limit

	*/
	Limit *int64
	/*Offset
	  offset

	*/
	Offset *int64
	/*TopicName
	  name

	*/
	TopicName *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin channel topic list params
func (o *AdminChannelTopicListParams) WithTimeout(timeout time.Duration) *AdminChannelTopicListParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin channel topic list params
func (o *AdminChannelTopicListParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin channel topic list params
func (o *AdminChannelTopicListParams) WithContext(ctx context.Context) *AdminChannelTopicListParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin channel topic list params
func (o *AdminChannelTopicListParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin channel topic list params
func (o *AdminChannelTopicListParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin channel topic list params
func (o *AdminChannelTopicListParams) WithHTTPClient(client *http.Client) *AdminChannelTopicListParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin channel topic list params
func (o *AdminChannelTopicListParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin channel topic list params
func (o *AdminChannelTopicListParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminChannelTopicListParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin channel topic list params
func (o *AdminChannelTopicListParams) WithNamespace(namespace string) *AdminChannelTopicListParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin channel topic list params
func (o *AdminChannelTopicListParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the admin channel topic list params
func (o *AdminChannelTopicListParams) WithLimit(limit *int64) *AdminChannelTopicListParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin channel topic list params
func (o *AdminChannelTopicListParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin channel topic list params
func (o *AdminChannelTopicListParams) WithOffset(offset *int64) *AdminChannelTopicListParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin channel topic list params
func (o *AdminChannelTopicListParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithTopicName adds the topicName to the admin channel topic list params
func (o *AdminChannelTopicListParams) WithTopicName(topicName *string) *AdminChannelTopicListParams {
	o.SetTopicName(topicName)
	return o
}

// SetTopicName adds the topicName to the admin channel topic list params
func (o *AdminChannelTopicListParams) SetTopicName(topicName *string) {
	o.TopicName = topicName
}

// WriteToRequest writes these params to a swagger request
func (o *AdminChannelTopicListParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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

	if o.Offset != nil {

		// query param offset
		var qrOffset int64
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt64(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
		}

	}

	if o.TopicName != nil {

		// query param topicName
		var qrTopicName string
		if o.TopicName != nil {
			qrTopicName = *o.TopicName
		}
		qTopicName := qrTopicName
		if qTopicName != "" {
			if err := r.SetQueryParam("topicName", qTopicName); err != nil {
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
