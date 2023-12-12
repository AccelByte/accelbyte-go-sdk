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

// Get the enum in AdminQueryUsersTopicParams
const (
	AdminQueryUsersTopicCLANConstant      = "CLAN"
	AdminQueryUsersTopicNAMESPACEConstant = "NAMESPACE"
	AdminQueryUsersTopicNORMALConstant    = "NORMAL"
	AdminQueryUsersTopicPARTYConstant     = "PARTY"
	AdminQueryUsersTopicSESSIONConstant   = "SESSION"
)

// Get the enum in AdminQueryUsersTopicParams
const (
	AdminQueryUsersTopicGROUPConstant    = "GROUP"
	AdminQueryUsersTopicPERSONALConstant = "PERSONAL"
)

// NewAdminQueryUsersTopicParams creates a new AdminQueryUsersTopicParams object
// with the default values initialized.
func NewAdminQueryUsersTopicParams() *AdminQueryUsersTopicParams {
	var ()
	return &AdminQueryUsersTopicParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminQueryUsersTopicParamsWithTimeout creates a new AdminQueryUsersTopicParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminQueryUsersTopicParamsWithTimeout(timeout time.Duration) *AdminQueryUsersTopicParams {
	var ()
	return &AdminQueryUsersTopicParams{

		timeout: timeout,
	}
}

// NewAdminQueryUsersTopicParamsWithContext creates a new AdminQueryUsersTopicParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminQueryUsersTopicParamsWithContext(ctx context.Context) *AdminQueryUsersTopicParams {
	var ()
	return &AdminQueryUsersTopicParams{

		Context: ctx,
	}
}

// NewAdminQueryUsersTopicParamsWithHTTPClient creates a new AdminQueryUsersTopicParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminQueryUsersTopicParamsWithHTTPClient(client *http.Client) *AdminQueryUsersTopicParams {
	var ()
	return &AdminQueryUsersTopicParams{
		HTTPClient: client,
	}
}

/*AdminQueryUsersTopicParams contains all the parameters to send to the API endpoint
for the admin query users topic operation typically these are written to a http.Request
*/
type AdminQueryUsersTopicParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*UserID
	  userId

	*/
	UserID string
	/*IncludePastTopics
	  when true will include topics that user already left

	*/
	IncludePastTopics *bool
	/*Limit
	  default: 100

	*/
	Limit *int64
	/*Offset
	  offset

	*/
	Offset *int64
	/*TopicSubType
	  topicSubType

	*/
	TopicSubType *string
	/*TopicType
	  topicType

	*/
	TopicType *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin query users topic params
func (o *AdminQueryUsersTopicParams) WithTimeout(timeout time.Duration) *AdminQueryUsersTopicParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin query users topic params
func (o *AdminQueryUsersTopicParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin query users topic params
func (o *AdminQueryUsersTopicParams) WithContext(ctx context.Context) *AdminQueryUsersTopicParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin query users topic params
func (o *AdminQueryUsersTopicParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin query users topic params
func (o *AdminQueryUsersTopicParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin query users topic params
func (o *AdminQueryUsersTopicParams) WithHTTPClient(client *http.Client) *AdminQueryUsersTopicParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin query users topic params
func (o *AdminQueryUsersTopicParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin query users topic params
func (o *AdminQueryUsersTopicParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin query users topic params
func (o *AdminQueryUsersTopicParams) WithNamespace(namespace string) *AdminQueryUsersTopicParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin query users topic params
func (o *AdminQueryUsersTopicParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin query users topic params
func (o *AdminQueryUsersTopicParams) WithUserID(userID string) *AdminQueryUsersTopicParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin query users topic params
func (o *AdminQueryUsersTopicParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithIncludePastTopics adds the includePastTopics to the admin query users topic params
func (o *AdminQueryUsersTopicParams) WithIncludePastTopics(includePastTopics *bool) *AdminQueryUsersTopicParams {
	o.SetIncludePastTopics(includePastTopics)
	return o
}

// SetIncludePastTopics adds the includePastTopics to the admin query users topic params
func (o *AdminQueryUsersTopicParams) SetIncludePastTopics(includePastTopics *bool) {
	o.IncludePastTopics = includePastTopics
}

// WithLimit adds the limit to the admin query users topic params
func (o *AdminQueryUsersTopicParams) WithLimit(limit *int64) *AdminQueryUsersTopicParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin query users topic params
func (o *AdminQueryUsersTopicParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin query users topic params
func (o *AdminQueryUsersTopicParams) WithOffset(offset *int64) *AdminQueryUsersTopicParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin query users topic params
func (o *AdminQueryUsersTopicParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithTopicSubType adds the topicSubType to the admin query users topic params
func (o *AdminQueryUsersTopicParams) WithTopicSubType(topicSubType *string) *AdminQueryUsersTopicParams {
	o.SetTopicSubType(topicSubType)
	return o
}

// SetTopicSubType adds the topicSubType to the admin query users topic params
func (o *AdminQueryUsersTopicParams) SetTopicSubType(topicSubType *string) {
	o.TopicSubType = topicSubType
}

// WithTopicType adds the topicType to the admin query users topic params
func (o *AdminQueryUsersTopicParams) WithTopicType(topicType *string) *AdminQueryUsersTopicParams {
	o.SetTopicType(topicType)
	return o
}

// SetTopicType adds the topicType to the admin query users topic params
func (o *AdminQueryUsersTopicParams) SetTopicType(topicType *string) {
	o.TopicType = topicType
}

// WriteToRequest writes these params to a swagger request
func (o *AdminQueryUsersTopicParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
	}

	if o.IncludePastTopics != nil {

		// query param includePastTopics
		var qrIncludePastTopics bool
		if o.IncludePastTopics != nil {
			qrIncludePastTopics = *o.IncludePastTopics
		}
		qIncludePastTopics := swag.FormatBool(qrIncludePastTopics)
		if qIncludePastTopics != "" {
			if err := r.SetQueryParam("includePastTopics", qIncludePastTopics); err != nil {
				return err
			}
		}

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

	if o.TopicSubType != nil {

		// query param topicSubType
		var qrTopicSubType string
		if o.TopicSubType != nil {
			qrTopicSubType = *o.TopicSubType
		}
		qTopicSubType := qrTopicSubType
		if qTopicSubType != "" {
			if err := r.SetQueryParam("topicSubType", qTopicSubType); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
