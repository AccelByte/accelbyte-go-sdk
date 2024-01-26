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

// NewAdminTopicListParams creates a new AdminTopicListParams object
// with the default values initialized.
func NewAdminTopicListParams() *AdminTopicListParams {
	var ()
	return &AdminTopicListParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminTopicListParamsWithTimeout creates a new AdminTopicListParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminTopicListParamsWithTimeout(timeout time.Duration) *AdminTopicListParams {
	var ()
	return &AdminTopicListParams{

		timeout: timeout,
	}
}

// NewAdminTopicListParamsWithContext creates a new AdminTopicListParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminTopicListParamsWithContext(ctx context.Context) *AdminTopicListParams {
	var ()
	return &AdminTopicListParams{

		Context: ctx,
	}
}

// NewAdminTopicListParamsWithHTTPClient creates a new AdminTopicListParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminTopicListParamsWithHTTPClient(client *http.Client) *AdminTopicListParams {
	var ()
	return &AdminTopicListParams{
		HTTPClient: client,
	}
}

/*AdminTopicListParams contains all the parameters to send to the API endpoint
for the admin topic list operation typically these are written to a http.Request
*/
type AdminTopicListParams struct {

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

// WithTimeout adds the timeout to the admin topic list params
func (o *AdminTopicListParams) WithTimeout(timeout time.Duration) *AdminTopicListParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin topic list params
func (o *AdminTopicListParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin topic list params
func (o *AdminTopicListParams) WithContext(ctx context.Context) *AdminTopicListParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin topic list params
func (o *AdminTopicListParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin topic list params
func (o *AdminTopicListParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin topic list params
func (o *AdminTopicListParams) WithHTTPClient(client *http.Client) *AdminTopicListParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin topic list params
func (o *AdminTopicListParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin topic list params
func (o *AdminTopicListParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminTopicListParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin topic list params
func (o *AdminTopicListParams) WithNamespace(namespace string) *AdminTopicListParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin topic list params
func (o *AdminTopicListParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the admin topic list params
func (o *AdminTopicListParams) WithLimit(limit *int64) *AdminTopicListParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin topic list params
func (o *AdminTopicListParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin topic list params
func (o *AdminTopicListParams) WithOffset(offset *int64) *AdminTopicListParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin topic list params
func (o *AdminTopicListParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithTopicType adds the topicType to the admin topic list params
func (o *AdminTopicListParams) WithTopicType(topicType *string) *AdminTopicListParams {
	o.SetTopicType(topicType)
	return o
}

// SetTopicType adds the topicType to the admin topic list params
func (o *AdminTopicListParams) SetTopicType(topicType *string) {
	o.TopicType = topicType
}

// WriteToRequest writes these params to a swagger request
func (o *AdminTopicListParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
