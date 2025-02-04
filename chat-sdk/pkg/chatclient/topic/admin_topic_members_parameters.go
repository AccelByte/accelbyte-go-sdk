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

// NewAdminTopicMembersParams creates a new AdminTopicMembersParams object
// with the default values initialized.
func NewAdminTopicMembersParams() *AdminTopicMembersParams {
	var (
		limitDefault = int64(100)
	)
	return &AdminTopicMembersParams{
		Limit: &limitDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminTopicMembersParamsWithTimeout creates a new AdminTopicMembersParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminTopicMembersParamsWithTimeout(timeout time.Duration) *AdminTopicMembersParams {
	var (
		limitDefault = int64(100)
	)
	return &AdminTopicMembersParams{
		Limit: &limitDefault,

		timeout: timeout,
	}
}

// NewAdminTopicMembersParamsWithContext creates a new AdminTopicMembersParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminTopicMembersParamsWithContext(ctx context.Context) *AdminTopicMembersParams {
	var (
		limitDefault = int64(100)
	)
	return &AdminTopicMembersParams{
		Limit: &limitDefault,

		Context: ctx,
	}
}

// NewAdminTopicMembersParamsWithHTTPClient creates a new AdminTopicMembersParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminTopicMembersParamsWithHTTPClient(client *http.Client) *AdminTopicMembersParams {
	var (
		limitDefault = int64(100)
	)
	return &AdminTopicMembersParams{
		Limit:      &limitDefault,
		HTTPClient: client,
	}
}

/*AdminTopicMembersParams contains all the parameters to send to the API endpoint
for the admin topic members operation typically these are written to a http.Request
*/
type AdminTopicMembersParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*Topic
	  topic ID

	*/
	Topic string
	/*IsBanned
	  only show banned member

	*/
	IsBanned *bool
	/*IsModerator
	  only show moderator member

	*/
	IsModerator *bool
	/*Limit
	  limit

	*/
	Limit *int64
	/*Offset
	  offset

	*/
	Offset *int64
	/*ShardID
	  shard ID

	*/
	ShardID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin topic members params
func (o *AdminTopicMembersParams) WithTimeout(timeout time.Duration) *AdminTopicMembersParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin topic members params
func (o *AdminTopicMembersParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin topic members params
func (o *AdminTopicMembersParams) WithContext(ctx context.Context) *AdminTopicMembersParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin topic members params
func (o *AdminTopicMembersParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin topic members params
func (o *AdminTopicMembersParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin topic members params
func (o *AdminTopicMembersParams) WithHTTPClient(client *http.Client) *AdminTopicMembersParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin topic members params
func (o *AdminTopicMembersParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin topic members params
func (o *AdminTopicMembersParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminTopicMembersParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin topic members params
func (o *AdminTopicMembersParams) WithNamespace(namespace string) *AdminTopicMembersParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin topic members params
func (o *AdminTopicMembersParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTopic adds the topic to the admin topic members params
func (o *AdminTopicMembersParams) WithTopic(topic string) *AdminTopicMembersParams {
	o.SetTopic(topic)
	return o
}

// SetTopic adds the topic to the admin topic members params
func (o *AdminTopicMembersParams) SetTopic(topic string) {
	o.Topic = topic
}

// WithIsBanned adds the isBanned to the admin topic members params
func (o *AdminTopicMembersParams) WithIsBanned(isBanned *bool) *AdminTopicMembersParams {
	o.SetIsBanned(isBanned)
	return o
}

// SetIsBanned adds the isBanned to the admin topic members params
func (o *AdminTopicMembersParams) SetIsBanned(isBanned *bool) {
	o.IsBanned = isBanned
}

// WithIsModerator adds the isModerator to the admin topic members params
func (o *AdminTopicMembersParams) WithIsModerator(isModerator *bool) *AdminTopicMembersParams {
	o.SetIsModerator(isModerator)
	return o
}

// SetIsModerator adds the isModerator to the admin topic members params
func (o *AdminTopicMembersParams) SetIsModerator(isModerator *bool) {
	o.IsModerator = isModerator
}

// WithLimit adds the limit to the admin topic members params
func (o *AdminTopicMembersParams) WithLimit(limit *int64) *AdminTopicMembersParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin topic members params
func (o *AdminTopicMembersParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin topic members params
func (o *AdminTopicMembersParams) WithOffset(offset *int64) *AdminTopicMembersParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin topic members params
func (o *AdminTopicMembersParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithShardID adds the shardID to the admin topic members params
func (o *AdminTopicMembersParams) WithShardID(shardID *string) *AdminTopicMembersParams {
	o.SetShardID(shardID)
	return o
}

// SetShardID adds the shardId to the admin topic members params
func (o *AdminTopicMembersParams) SetShardID(shardID *string) {
	o.ShardID = shardID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminTopicMembersParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.IsBanned != nil {

		// query param isBanned
		var qrIsBanned bool
		if o.IsBanned != nil {
			qrIsBanned = *o.IsBanned
		}
		qIsBanned := swag.FormatBool(qrIsBanned)
		if qIsBanned != "" {
			if err := r.SetQueryParam("isBanned", qIsBanned); err != nil {
				return err
			}
		}

	}

	if o.IsModerator != nil {

		// query param isModerator
		var qrIsModerator bool
		if o.IsModerator != nil {
			qrIsModerator = *o.IsModerator
		}
		qIsModerator := swag.FormatBool(qrIsModerator)
		if qIsModerator != "" {
			if err := r.SetQueryParam("isModerator", qIsModerator); err != nil {
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

	if o.ShardID != nil {

		// query param shardId
		var qrShardID string
		if o.ShardID != nil {
			qrShardID = *o.ShardID
		}
		qShardID := qrShardID
		if qShardID != "" {
			if err := r.SetQueryParam("shardId", qShardID); err != nil {
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
