// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_achievements

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

// Get the enum in AdminListUserAchievementsParams
const (
	AdminListUserAchievementsAchievedAtConstant     = "achievedAt"
	AdminListUserAchievementsAchievedAtAscConstant  = "achievedAt:asc"
	AdminListUserAchievementsAchievedAtDescConstant = "achievedAt:desc"
	AdminListUserAchievementsCreatedAtConstant      = "createdAt"
	AdminListUserAchievementsCreatedAtAscConstant   = "createdAt:asc"
	AdminListUserAchievementsCreatedAtDescConstant  = "createdAt:desc"
)

// NewAdminListUserAchievementsParams creates a new AdminListUserAchievementsParams object
// with the default values initialized.
func NewAdminListUserAchievementsParams() *AdminListUserAchievementsParams {
	var (
		limitDefault          = int64(10)
		offsetDefault         = int64(0)
		preferUnlockedDefault = bool(true)
	)
	return &AdminListUserAchievementsParams{
		Limit:          &limitDefault,
		Offset:         &offsetDefault,
		PreferUnlocked: &preferUnlockedDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminListUserAchievementsParamsWithTimeout creates a new AdminListUserAchievementsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminListUserAchievementsParamsWithTimeout(timeout time.Duration) *AdminListUserAchievementsParams {
	var (
		limitDefault          = int64(10)
		offsetDefault         = int64(0)
		preferUnlockedDefault = bool(true)
	)
	return &AdminListUserAchievementsParams{
		Limit:          &limitDefault,
		Offset:         &offsetDefault,
		PreferUnlocked: &preferUnlockedDefault,

		timeout: timeout,
	}
}

// NewAdminListUserAchievementsParamsWithContext creates a new AdminListUserAchievementsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminListUserAchievementsParamsWithContext(ctx context.Context) *AdminListUserAchievementsParams {
	var (
		limitDefault          = int64(10)
		offsetDefault         = int64(0)
		preferUnlockedDefault = bool(true)
	)
	return &AdminListUserAchievementsParams{
		Limit:          &limitDefault,
		Offset:         &offsetDefault,
		PreferUnlocked: &preferUnlockedDefault,

		Context: ctx,
	}
}

// NewAdminListUserAchievementsParamsWithHTTPClient creates a new AdminListUserAchievementsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminListUserAchievementsParamsWithHTTPClient(client *http.Client) *AdminListUserAchievementsParams {
	var (
		limitDefault          = int64(10)
		offsetDefault         = int64(0)
		preferUnlockedDefault = bool(true)
	)
	return &AdminListUserAchievementsParams{
		Limit:          &limitDefault,
		Offset:         &offsetDefault,
		PreferUnlocked: &preferUnlockedDefault,
		HTTPClient:     client,
	}
}

/*AdminListUserAchievementsParams contains all the parameters to send to the API endpoint
for the admin list user achievements operation typically these are written to a http.Request
*/
type AdminListUserAchievementsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  user id

	*/
	UserID string
	/*Limit
	  the maximum number of data that may be returned (1...100)

	*/
	Limit *int64
	/*Offset
	  offset

	*/
	Offset *int64
	/*PreferUnlocked
	  prefer to query achieved

	*/
	PreferUnlocked *bool
	/*SortBy
	  sort by, allow values: [achievedAt, achievedAt:asc, achievedAt:desc, createdAt, createdAt:asc, createdAt:desc]

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

// WithTimeout adds the timeout to the admin list user achievements params
func (o *AdminListUserAchievementsParams) WithTimeout(timeout time.Duration) *AdminListUserAchievementsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin list user achievements params
func (o *AdminListUserAchievementsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin list user achievements params
func (o *AdminListUserAchievementsParams) WithContext(ctx context.Context) *AdminListUserAchievementsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin list user achievements params
func (o *AdminListUserAchievementsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin list user achievements params
func (o *AdminListUserAchievementsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin list user achievements params
func (o *AdminListUserAchievementsParams) WithHTTPClient(client *http.Client) *AdminListUserAchievementsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin list user achievements params
func (o *AdminListUserAchievementsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin list user achievements params
func (o *AdminListUserAchievementsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminListUserAchievementsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin list user achievements params
func (o *AdminListUserAchievementsParams) WithNamespace(namespace string) *AdminListUserAchievementsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin list user achievements params
func (o *AdminListUserAchievementsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin list user achievements params
func (o *AdminListUserAchievementsParams) WithUserID(userID string) *AdminListUserAchievementsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin list user achievements params
func (o *AdminListUserAchievementsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithLimit adds the limit to the admin list user achievements params
func (o *AdminListUserAchievementsParams) WithLimit(limit *int64) *AdminListUserAchievementsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin list user achievements params
func (o *AdminListUserAchievementsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin list user achievements params
func (o *AdminListUserAchievementsParams) WithOffset(offset *int64) *AdminListUserAchievementsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin list user achievements params
func (o *AdminListUserAchievementsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithPreferUnlocked adds the preferUnlocked to the admin list user achievements params
func (o *AdminListUserAchievementsParams) WithPreferUnlocked(preferUnlocked *bool) *AdminListUserAchievementsParams {
	o.SetPreferUnlocked(preferUnlocked)
	return o
}

// SetPreferUnlocked adds the preferUnlocked to the admin list user achievements params
func (o *AdminListUserAchievementsParams) SetPreferUnlocked(preferUnlocked *bool) {
	o.PreferUnlocked = preferUnlocked
}

// WithSortBy adds the sortBy to the admin list user achievements params
func (o *AdminListUserAchievementsParams) WithSortBy(sortBy *string) *AdminListUserAchievementsParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the admin list user achievements params
func (o *AdminListUserAchievementsParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WithTags adds the tags to the admin list user achievements params
func (o *AdminListUserAchievementsParams) WithTags(tags []string) *AdminListUserAchievementsParams {
	o.SetTags(tags)
	return o
}

// SetTags adds the tags to the admin list user achievements params
func (o *AdminListUserAchievementsParams) SetTags(tags []string) {
	o.Tags = tags
}

// WriteToRequest writes these params to a swagger request
func (o *AdminListUserAchievementsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.PreferUnlocked != nil {

		// query param preferUnlocked
		var qrPreferUnlocked bool
		if o.PreferUnlocked != nil {
			qrPreferUnlocked = *o.PreferUnlocked
		}
		qPreferUnlocked := swag.FormatBool(qrPreferUnlocked)
		if qPreferUnlocked != "" {
			if err := r.SetQueryParam("preferUnlocked", qPreferUnlocked); err != nil {
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
