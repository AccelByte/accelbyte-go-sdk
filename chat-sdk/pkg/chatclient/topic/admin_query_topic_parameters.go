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

// Get the enum in AdminQueryTopicParams
const (
	AdminQueryTopicCLANConstant      = "CLAN"
	AdminQueryTopicNAMESPACEConstant = "NAMESPACE"
	AdminQueryTopicNORMALConstant    = "NORMAL"
	AdminQueryTopicPARTYConstant     = "PARTY"
	AdminQueryTopicSESSIONConstant   = "SESSION"
)

// Get the enum in AdminQueryTopicParams
const (
	AdminQueryTopicGROUPConstant    = "GROUP"
	AdminQueryTopicPERSONALConstant = "PERSONAL"
)

// NewAdminQueryTopicParams creates a new AdminQueryTopicParams object
// with the default values initialized.
func NewAdminQueryTopicParams() *AdminQueryTopicParams {
	var ()
	return &AdminQueryTopicParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminQueryTopicParamsWithTimeout creates a new AdminQueryTopicParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminQueryTopicParamsWithTimeout(timeout time.Duration) *AdminQueryTopicParams {
	var ()
	return &AdminQueryTopicParams{

		timeout: timeout,
	}
}

// NewAdminQueryTopicParamsWithContext creates a new AdminQueryTopicParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminQueryTopicParamsWithContext(ctx context.Context) *AdminQueryTopicParams {
	var ()
	return &AdminQueryTopicParams{

		Context: ctx,
	}
}

// NewAdminQueryTopicParamsWithHTTPClient creates a new AdminQueryTopicParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminQueryTopicParamsWithHTTPClient(client *http.Client) *AdminQueryTopicParams {
	var ()
	return &AdminQueryTopicParams{
		HTTPClient: client,
	}
}

/*AdminQueryTopicParams contains all the parameters to send to the API endpoint
for the admin query topic operation typically these are written to a http.Request
*/
type AdminQueryTopicParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*IncludeMembers
	  include topic's members

	*/
	IncludeMembers *bool
	/*IncludePastMembers
	  include past members (user that had left topic)

	*/
	IncludePastMembers *bool
	/*IncludePastTopics
	  include topic that has been removed.<br/><b>NOTE:</b> only soft deleted topics are available

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
	/*Topic
	  topic

	*/
	Topic []string
	/*TopicSubType
	  topicSubType

	*/
	TopicSubType *string
	/*TopicType
	  topicType

	*/
	TopicType *string
	/*UserID
	  userId

	*/
	UserID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin query topic params
func (o *AdminQueryTopicParams) WithTimeout(timeout time.Duration) *AdminQueryTopicParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin query topic params
func (o *AdminQueryTopicParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin query topic params
func (o *AdminQueryTopicParams) WithContext(ctx context.Context) *AdminQueryTopicParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin query topic params
func (o *AdminQueryTopicParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin query topic params
func (o *AdminQueryTopicParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin query topic params
func (o *AdminQueryTopicParams) WithHTTPClient(client *http.Client) *AdminQueryTopicParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin query topic params
func (o *AdminQueryTopicParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin query topic params
func (o *AdminQueryTopicParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminQueryTopicParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin query topic params
func (o *AdminQueryTopicParams) WithNamespace(namespace string) *AdminQueryTopicParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin query topic params
func (o *AdminQueryTopicParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithIncludeMembers adds the includeMembers to the admin query topic params
func (o *AdminQueryTopicParams) WithIncludeMembers(includeMembers *bool) *AdminQueryTopicParams {
	o.SetIncludeMembers(includeMembers)
	return o
}

// SetIncludeMembers adds the includeMembers to the admin query topic params
func (o *AdminQueryTopicParams) SetIncludeMembers(includeMembers *bool) {
	o.IncludeMembers = includeMembers
}

// WithIncludePastMembers adds the includePastMembers to the admin query topic params
func (o *AdminQueryTopicParams) WithIncludePastMembers(includePastMembers *bool) *AdminQueryTopicParams {
	o.SetIncludePastMembers(includePastMembers)
	return o
}

// SetIncludePastMembers adds the includePastMembers to the admin query topic params
func (o *AdminQueryTopicParams) SetIncludePastMembers(includePastMembers *bool) {
	o.IncludePastMembers = includePastMembers
}

// WithIncludePastTopics adds the includePastTopics to the admin query topic params
func (o *AdminQueryTopicParams) WithIncludePastTopics(includePastTopics *bool) *AdminQueryTopicParams {
	o.SetIncludePastTopics(includePastTopics)
	return o
}

// SetIncludePastTopics adds the includePastTopics to the admin query topic params
func (o *AdminQueryTopicParams) SetIncludePastTopics(includePastTopics *bool) {
	o.IncludePastTopics = includePastTopics
}

// WithLimit adds the limit to the admin query topic params
func (o *AdminQueryTopicParams) WithLimit(limit *int64) *AdminQueryTopicParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin query topic params
func (o *AdminQueryTopicParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin query topic params
func (o *AdminQueryTopicParams) WithOffset(offset *int64) *AdminQueryTopicParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin query topic params
func (o *AdminQueryTopicParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithTopic adds the topic to the admin query topic params
func (o *AdminQueryTopicParams) WithTopic(topic []string) *AdminQueryTopicParams {
	o.SetTopic(topic)
	return o
}

// SetTopic adds the topic to the admin query topic params
func (o *AdminQueryTopicParams) SetTopic(topic []string) {
	o.Topic = topic
}

// WithTopicSubType adds the topicSubType to the admin query topic params
func (o *AdminQueryTopicParams) WithTopicSubType(topicSubType *string) *AdminQueryTopicParams {
	o.SetTopicSubType(topicSubType)
	return o
}

// SetTopicSubType adds the topicSubType to the admin query topic params
func (o *AdminQueryTopicParams) SetTopicSubType(topicSubType *string) {
	o.TopicSubType = topicSubType
}

// WithTopicType adds the topicType to the admin query topic params
func (o *AdminQueryTopicParams) WithTopicType(topicType *string) *AdminQueryTopicParams {
	o.SetTopicType(topicType)
	return o
}

// SetTopicType adds the topicType to the admin query topic params
func (o *AdminQueryTopicParams) SetTopicType(topicType *string) {
	o.TopicType = topicType
}

// WithUserID adds the userID to the admin query topic params
func (o *AdminQueryTopicParams) WithUserID(userID *string) *AdminQueryTopicParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin query topic params
func (o *AdminQueryTopicParams) SetUserID(userID *string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminQueryTopicParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.IncludeMembers != nil {

		// query param includeMembers
		var qrIncludeMembers bool
		if o.IncludeMembers != nil {
			qrIncludeMembers = *o.IncludeMembers
		}
		qIncludeMembers := swag.FormatBool(qrIncludeMembers)
		if qIncludeMembers != "" {
			if err := r.SetQueryParam("includeMembers", qIncludeMembers); err != nil {
				return err
			}
		}

	}

	if o.IncludePastMembers != nil {

		// query param includePastMembers
		var qrIncludePastMembers bool
		if o.IncludePastMembers != nil {
			qrIncludePastMembers = *o.IncludePastMembers
		}
		qIncludePastMembers := swag.FormatBool(qrIncludePastMembers)
		if qIncludePastMembers != "" {
			if err := r.SetQueryParam("includePastMembers", qIncludePastMembers); err != nil {
				return err
			}
		}

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

	valuesTopic := o.Topic

	joinedTopic := swag.JoinByFormat(valuesTopic, "multi")
	// query array param topic
	if err := r.SetQueryParam("topic", joinedTopic...); err != nil {
		return err
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

	if o.UserID != nil {

		// query param userId
		var qrUserID string
		if o.UserID != nil {
			qrUserID = *o.UserID
		}
		qUserID := qrUserID
		if qUserID != "" {
			if err := r.SetQueryParam("userId", qUserID); err != nil {
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
