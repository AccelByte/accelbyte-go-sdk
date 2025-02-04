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

// NewAdminQueryTopicLogParams creates a new AdminQueryTopicLogParams object
// with the default values initialized.
func NewAdminQueryTopicLogParams() *AdminQueryTopicLogParams {
	var (
		limitDefault = int64(100)
	)
	return &AdminQueryTopicLogParams{
		Limit: &limitDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminQueryTopicLogParamsWithTimeout creates a new AdminQueryTopicLogParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminQueryTopicLogParamsWithTimeout(timeout time.Duration) *AdminQueryTopicLogParams {
	var (
		limitDefault = int64(100)
	)
	return &AdminQueryTopicLogParams{
		Limit: &limitDefault,

		timeout: timeout,
	}
}

// NewAdminQueryTopicLogParamsWithContext creates a new AdminQueryTopicLogParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminQueryTopicLogParamsWithContext(ctx context.Context) *AdminQueryTopicLogParams {
	var (
		limitDefault = int64(100)
	)
	return &AdminQueryTopicLogParams{
		Limit: &limitDefault,

		Context: ctx,
	}
}

// NewAdminQueryTopicLogParamsWithHTTPClient creates a new AdminQueryTopicLogParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminQueryTopicLogParamsWithHTTPClient(client *http.Client) *AdminQueryTopicLogParams {
	var (
		limitDefault = int64(100)
	)
	return &AdminQueryTopicLogParams{
		Limit:      &limitDefault,
		HTTPClient: client,
	}
}

/*AdminQueryTopicLogParams contains all the parameters to send to the API endpoint
for the admin query topic log operation typically these are written to a http.Request
*/
type AdminQueryTopicLogParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*EndCreatedAt
	  end date

	*/
	EndCreatedAt *int64
	/*Limit
	  limit

	*/
	Limit *int64
	/*Offset
	  offset

	*/
	Offset *int64
	/*SenderUserID
	  senderUserId (actor, can be admin or the user itself)

	*/
	SenderUserID *string
	/*StartCreatedAt
	  start date

	*/
	StartCreatedAt *int64
	/*TopicID
	  topicId

	*/
	TopicID *string
	/*TopicIds
	  topicIds

	*/
	TopicIds []string
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

// WithTimeout adds the timeout to the admin query topic log params
func (o *AdminQueryTopicLogParams) WithTimeout(timeout time.Duration) *AdminQueryTopicLogParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin query topic log params
func (o *AdminQueryTopicLogParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin query topic log params
func (o *AdminQueryTopicLogParams) WithContext(ctx context.Context) *AdminQueryTopicLogParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin query topic log params
func (o *AdminQueryTopicLogParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin query topic log params
func (o *AdminQueryTopicLogParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin query topic log params
func (o *AdminQueryTopicLogParams) WithHTTPClient(client *http.Client) *AdminQueryTopicLogParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin query topic log params
func (o *AdminQueryTopicLogParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin query topic log params
func (o *AdminQueryTopicLogParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminQueryTopicLogParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin query topic log params
func (o *AdminQueryTopicLogParams) WithNamespace(namespace string) *AdminQueryTopicLogParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin query topic log params
func (o *AdminQueryTopicLogParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithEndCreatedAt adds the endCreatedAt to the admin query topic log params
func (o *AdminQueryTopicLogParams) WithEndCreatedAt(endCreatedAt *int64) *AdminQueryTopicLogParams {
	o.SetEndCreatedAt(endCreatedAt)
	return o
}

// SetEndCreatedAt adds the endCreatedAt to the admin query topic log params
func (o *AdminQueryTopicLogParams) SetEndCreatedAt(endCreatedAt *int64) {
	o.EndCreatedAt = endCreatedAt
}

// WithLimit adds the limit to the admin query topic log params
func (o *AdminQueryTopicLogParams) WithLimit(limit *int64) *AdminQueryTopicLogParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin query topic log params
func (o *AdminQueryTopicLogParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin query topic log params
func (o *AdminQueryTopicLogParams) WithOffset(offset *int64) *AdminQueryTopicLogParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin query topic log params
func (o *AdminQueryTopicLogParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithSenderUserID adds the senderUserID to the admin query topic log params
func (o *AdminQueryTopicLogParams) WithSenderUserID(senderUserID *string) *AdminQueryTopicLogParams {
	o.SetSenderUserID(senderUserID)
	return o
}

// SetSenderUserID adds the senderUserId to the admin query topic log params
func (o *AdminQueryTopicLogParams) SetSenderUserID(senderUserID *string) {
	o.SenderUserID = senderUserID
}

// WithStartCreatedAt adds the startCreatedAt to the admin query topic log params
func (o *AdminQueryTopicLogParams) WithStartCreatedAt(startCreatedAt *int64) *AdminQueryTopicLogParams {
	o.SetStartCreatedAt(startCreatedAt)
	return o
}

// SetStartCreatedAt adds the startCreatedAt to the admin query topic log params
func (o *AdminQueryTopicLogParams) SetStartCreatedAt(startCreatedAt *int64) {
	o.StartCreatedAt = startCreatedAt
}

// WithTopicID adds the topicID to the admin query topic log params
func (o *AdminQueryTopicLogParams) WithTopicID(topicID *string) *AdminQueryTopicLogParams {
	o.SetTopicID(topicID)
	return o
}

// SetTopicID adds the topicId to the admin query topic log params
func (o *AdminQueryTopicLogParams) SetTopicID(topicID *string) {
	o.TopicID = topicID
}

// WithTopicIds adds the topicIds to the admin query topic log params
func (o *AdminQueryTopicLogParams) WithTopicIds(topicIds []string) *AdminQueryTopicLogParams {
	o.SetTopicIds(topicIds)
	return o
}

// SetTopicIds adds the topicIds to the admin query topic log params
func (o *AdminQueryTopicLogParams) SetTopicIds(topicIds []string) {
	o.TopicIds = topicIds
}

// WithUserID adds the userID to the admin query topic log params
func (o *AdminQueryTopicLogParams) WithUserID(userID *string) *AdminQueryTopicLogParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin query topic log params
func (o *AdminQueryTopicLogParams) SetUserID(userID *string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminQueryTopicLogParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.EndCreatedAt != nil {

		// query param endCreatedAt
		var qrEndCreatedAt int64
		if o.EndCreatedAt != nil {
			qrEndCreatedAt = *o.EndCreatedAt
		}
		qEndCreatedAt := swag.FormatInt64(qrEndCreatedAt)
		if qEndCreatedAt != "" {
			if err := r.SetQueryParam("endCreatedAt", qEndCreatedAt); err != nil {
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

	if o.SenderUserID != nil {

		// query param senderUserId
		var qrSenderUserID string
		if o.SenderUserID != nil {
			qrSenderUserID = *o.SenderUserID
		}
		qSenderUserID := qrSenderUserID
		if qSenderUserID != "" {
			if err := r.SetQueryParam("senderUserId", qSenderUserID); err != nil {
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

	if o.TopicID != nil {

		// query param topicId
		var qrTopicID string
		if o.TopicID != nil {
			qrTopicID = *o.TopicID
		}
		qTopicID := qrTopicID
		if qTopicID != "" {
			if err := r.SetQueryParam("topicId", qTopicID); err != nil {
				return err
			}
		}

	}

	valuesTopicIds := o.TopicIds

	joinedTopicIds := swag.JoinByFormat(valuesTopicIds, "multi")
	// query array param topicIds
	if err := r.SetQueryParam("topicIds", joinedTopicIds...); err != nil {
		return err
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
