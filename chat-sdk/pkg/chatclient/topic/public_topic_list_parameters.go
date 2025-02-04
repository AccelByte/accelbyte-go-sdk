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

// NewPublicTopicListParams creates a new PublicTopicListParams object
// with the default values initialized.
func NewPublicTopicListParams() *PublicTopicListParams {
	var (
		limitDefault = int64(100)
	)
	return &PublicTopicListParams{
		Limit: &limitDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicTopicListParamsWithTimeout creates a new PublicTopicListParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicTopicListParamsWithTimeout(timeout time.Duration) *PublicTopicListParams {
	var (
		limitDefault = int64(100)
	)
	return &PublicTopicListParams{
		Limit: &limitDefault,

		timeout: timeout,
	}
}

// NewPublicTopicListParamsWithContext creates a new PublicTopicListParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicTopicListParamsWithContext(ctx context.Context) *PublicTopicListParams {
	var (
		limitDefault = int64(100)
	)
	return &PublicTopicListParams{
		Limit: &limitDefault,

		Context: ctx,
	}
}

// NewPublicTopicListParamsWithHTTPClient creates a new PublicTopicListParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicTopicListParamsWithHTTPClient(client *http.Client) *PublicTopicListParams {
	var (
		limitDefault = int64(100)
	)
	return &PublicTopicListParams{
		Limit:      &limitDefault,
		HTTPClient: client,
	}
}

/*PublicTopicListParams contains all the parameters to send to the API endpoint
for the public topic list operation typically these are written to a http.Request
*/
type PublicTopicListParams struct {

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
	/*TopicType
	  PERSONAL or GROUP

	*/
	TopicType *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public topic list params
func (o *PublicTopicListParams) WithTimeout(timeout time.Duration) *PublicTopicListParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public topic list params
func (o *PublicTopicListParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public topic list params
func (o *PublicTopicListParams) WithContext(ctx context.Context) *PublicTopicListParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public topic list params
func (o *PublicTopicListParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public topic list params
func (o *PublicTopicListParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public topic list params
func (o *PublicTopicListParams) WithHTTPClient(client *http.Client) *PublicTopicListParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public topic list params
func (o *PublicTopicListParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public topic list params
func (o *PublicTopicListParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicTopicListParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public topic list params
func (o *PublicTopicListParams) WithNamespace(namespace string) *PublicTopicListParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public topic list params
func (o *PublicTopicListParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the public topic list params
func (o *PublicTopicListParams) WithLimit(limit *int64) *PublicTopicListParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the public topic list params
func (o *PublicTopicListParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the public topic list params
func (o *PublicTopicListParams) WithOffset(offset *int64) *PublicTopicListParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the public topic list params
func (o *PublicTopicListParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithTopicType adds the topicType to the public topic list params
func (o *PublicTopicListParams) WithTopicType(topicType *string) *PublicTopicListParams {
	o.SetTopicType(topicType)
	return o
}

// SetTopicType adds the topicType to the public topic list params
func (o *PublicTopicListParams) SetTopicType(topicType *string) {
	o.TopicType = topicType
}

// WriteToRequest writes these params to a swagger request
func (o *PublicTopicListParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.TopicType != nil {

		// query param topicType
		var qrTopicType string
		if o.TopicType != nil {
			qrTopicType = *o.TopicType
		}
		qTopicType := qrTopicType
		if qTopicType != "" {
			if err := r.SetQueryParam("topicType", qTopicType); err != nil {
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
