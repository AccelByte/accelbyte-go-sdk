// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package global_achievements

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

// Get the enum in ListUserContributionsParams
const (
	ListUserContributionsContributedValueConstant     = "contributedValue"
	ListUserContributionsContributedValueAscConstant  = "contributedValue:asc"
	ListUserContributionsContributedValueDescConstant = "contributedValue:desc"
)

// NewListUserContributionsParams creates a new ListUserContributionsParams object
// with the default values initialized.
func NewListUserContributionsParams() *ListUserContributionsParams {
	var (
		limitDefault  = int64(10)
		offsetDefault = int64(0)
		sortByDefault = string("contributedValue:desc")
	)
	return &ListUserContributionsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewListUserContributionsParamsWithTimeout creates a new ListUserContributionsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewListUserContributionsParamsWithTimeout(timeout time.Duration) *ListUserContributionsParams {
	var (
		limitDefault  = int64(10)
		offsetDefault = int64(0)
		sortByDefault = string("contributedValue:desc")
	)
	return &ListUserContributionsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		timeout: timeout,
	}
}

// NewListUserContributionsParamsWithContext creates a new ListUserContributionsParams object
// with the default values initialized, and the ability to set a context for a request
func NewListUserContributionsParamsWithContext(ctx context.Context) *ListUserContributionsParams {
	var (
		limitDefault  = int64(10)
		offsetDefault = int64(0)
		sortByDefault = string("contributedValue:desc")
	)
	return &ListUserContributionsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		Context: ctx,
	}
}

// NewListUserContributionsParamsWithHTTPClient creates a new ListUserContributionsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewListUserContributionsParamsWithHTTPClient(client *http.Client) *ListUserContributionsParams {
	var (
		limitDefault  = int64(10)
		offsetDefault = int64(0)
		sortByDefault = string("contributedValue:desc")
	)
	return &ListUserContributionsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		SortBy:     &sortByDefault,
		HTTPClient: client,
	}
}

/*ListUserContributionsParams contains all the parameters to send to the API endpoint
for the list user contributions operation typically these are written to a http.Request
*/
type ListUserContributionsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  user ID

	*/
	UserID string
	/*AchievementCodes
	  achievement codes. multiple value separated by comma

	*/
	AchievementCodes *string
	/*Limit
	  the maximum number of data that may be returned (1...100)

	*/
	Limit *int64
	/*Offset
	  offset

	*/
	Offset *int64
	/*SortBy
	  sort by, default is 'contributedValue:desc', allow values: [contributedValue, contributedValue:asc, contributedValue:desc]

	*/
	SortBy *string
	/*Tags
	  tags

	*/
	Tags []string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the list user contributions params
func (o *ListUserContributionsParams) WithTimeout(timeout time.Duration) *ListUserContributionsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the list user contributions params
func (o *ListUserContributionsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the list user contributions params
func (o *ListUserContributionsParams) WithContext(ctx context.Context) *ListUserContributionsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the list user contributions params
func (o *ListUserContributionsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the list user contributions params
func (o *ListUserContributionsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the list user contributions params
func (o *ListUserContributionsParams) WithHTTPClient(client *http.Client) *ListUserContributionsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the list user contributions params
func (o *ListUserContributionsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the list user contributions params
func (o *ListUserContributionsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ListUserContributionsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the list user contributions params
func (o *ListUserContributionsParams) WithNamespace(namespace string) *ListUserContributionsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the list user contributions params
func (o *ListUserContributionsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the list user contributions params
func (o *ListUserContributionsParams) WithUserID(userID string) *ListUserContributionsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the list user contributions params
func (o *ListUserContributionsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithAchievementCodes adds the achievementCodes to the list user contributions params
func (o *ListUserContributionsParams) WithAchievementCodes(achievementCodes *string) *ListUserContributionsParams {
	o.SetAchievementCodes(achievementCodes)
	return o
}

// SetAchievementCodes adds the achievementCodes to the list user contributions params
func (o *ListUserContributionsParams) SetAchievementCodes(achievementCodes *string) {
	o.AchievementCodes = achievementCodes
}

// WithLimit adds the limit to the list user contributions params
func (o *ListUserContributionsParams) WithLimit(limit *int64) *ListUserContributionsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the list user contributions params
func (o *ListUserContributionsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the list user contributions params
func (o *ListUserContributionsParams) WithOffset(offset *int64) *ListUserContributionsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the list user contributions params
func (o *ListUserContributionsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the list user contributions params
func (o *ListUserContributionsParams) WithSortBy(sortBy *string) *ListUserContributionsParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the list user contributions params
func (o *ListUserContributionsParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WithTags adds the tags to the list user contributions params
func (o *ListUserContributionsParams) WithTags(tags []string) *ListUserContributionsParams {
	o.SetTags(tags)
	return o
}

// SetTags adds the tags to the list user contributions params
func (o *ListUserContributionsParams) SetTags(tags []string) {
	o.Tags = tags
}

// WriteToRequest writes these params to a swagger request
func (o *ListUserContributionsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.AchievementCodes != nil {

		// query param achievementCodes
		var qrAchievementCodes string
		if o.AchievementCodes != nil {
			qrAchievementCodes = *o.AchievementCodes
		}
		qAchievementCodes := qrAchievementCodes
		if qAchievementCodes != "" {
			if err := r.SetQueryParam("achievementCodes", qAchievementCodes); err != nil {
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

	if o.SortBy != nil {

		// query param sortBy
		var qrSortBy string
		if o.SortBy != nil {
			qrSortBy = *o.SortBy
		}
		qSortBy := qrSortBy
		if qSortBy != "" {
			if err := r.SetQueryParam("sortBy", qSortBy); err != nil {
				return err
			}
		}

	}

	valuesTags := o.Tags

	joinedTags := swag.JoinByFormat(valuesTags, "csv")
	// query array param tags
	if err := r.SetQueryParam("tags", joinedTags...); err != nil {
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
