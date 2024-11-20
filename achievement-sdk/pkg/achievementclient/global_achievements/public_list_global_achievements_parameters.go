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

// Get the enum in PublicListGlobalAchievementsParams
const (
	PublicListGlobalAchievementsAchievedAtConstant     = "achievedAt"
	PublicListGlobalAchievementsAchievedAtAscConstant  = "achievedAt:asc"
	PublicListGlobalAchievementsAchievedAtDescConstant = "achievedAt:desc"
	PublicListGlobalAchievementsCreatedAtConstant      = "createdAt"
	PublicListGlobalAchievementsCreatedAtAscConstant   = "createdAt:asc"
	PublicListGlobalAchievementsCreatedAtDescConstant  = "createdAt:desc"
)

// NewPublicListGlobalAchievementsParams creates a new PublicListGlobalAchievementsParams object
// with the default values initialized.
func NewPublicListGlobalAchievementsParams() *PublicListGlobalAchievementsParams {
	var (
		limitDefault  = int64(10)
		offsetDefault = int64(0)
	)
	return &PublicListGlobalAchievementsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicListGlobalAchievementsParamsWithTimeout creates a new PublicListGlobalAchievementsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicListGlobalAchievementsParamsWithTimeout(timeout time.Duration) *PublicListGlobalAchievementsParams {
	var (
		limitDefault  = int64(10)
		offsetDefault = int64(0)
	)
	return &PublicListGlobalAchievementsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewPublicListGlobalAchievementsParamsWithContext creates a new PublicListGlobalAchievementsParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicListGlobalAchievementsParamsWithContext(ctx context.Context) *PublicListGlobalAchievementsParams {
	var (
		limitDefault  = int64(10)
		offsetDefault = int64(0)
	)
	return &PublicListGlobalAchievementsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewPublicListGlobalAchievementsParamsWithHTTPClient creates a new PublicListGlobalAchievementsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicListGlobalAchievementsParamsWithHTTPClient(client *http.Client) *PublicListGlobalAchievementsParams {
	var (
		limitDefault  = int64(10)
		offsetDefault = int64(0)
	)
	return &PublicListGlobalAchievementsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*PublicListGlobalAchievementsParams contains all the parameters to send to the API endpoint
for the public list global achievements operation typically these are written to a http.Request
*/
type PublicListGlobalAchievementsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*AchievementCodes
	  filter by achievement codes. multiple value separated by comma

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
	  sort by, allow values: [achievedAt, achievedAt:asc, achievedAt:desc, createdAt, createdAt:asc, createdAt:desc]

	*/
	SortBy *string
	/*Status
	  filter by status. available value: [in_progress, unlocked]

	*/
	Status *string
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

// WithTimeout adds the timeout to the public list global achievements params
func (o *PublicListGlobalAchievementsParams) WithTimeout(timeout time.Duration) *PublicListGlobalAchievementsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public list global achievements params
func (o *PublicListGlobalAchievementsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public list global achievements params
func (o *PublicListGlobalAchievementsParams) WithContext(ctx context.Context) *PublicListGlobalAchievementsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public list global achievements params
func (o *PublicListGlobalAchievementsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public list global achievements params
func (o *PublicListGlobalAchievementsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public list global achievements params
func (o *PublicListGlobalAchievementsParams) WithHTTPClient(client *http.Client) *PublicListGlobalAchievementsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public list global achievements params
func (o *PublicListGlobalAchievementsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public list global achievements params
func (o *PublicListGlobalAchievementsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicListGlobalAchievementsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public list global achievements params
func (o *PublicListGlobalAchievementsParams) WithNamespace(namespace string) *PublicListGlobalAchievementsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public list global achievements params
func (o *PublicListGlobalAchievementsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithAchievementCodes adds the achievementCodes to the public list global achievements params
func (o *PublicListGlobalAchievementsParams) WithAchievementCodes(achievementCodes *string) *PublicListGlobalAchievementsParams {
	o.SetAchievementCodes(achievementCodes)
	return o
}

// SetAchievementCodes adds the achievementCodes to the public list global achievements params
func (o *PublicListGlobalAchievementsParams) SetAchievementCodes(achievementCodes *string) {
	o.AchievementCodes = achievementCodes
}

// WithLimit adds the limit to the public list global achievements params
func (o *PublicListGlobalAchievementsParams) WithLimit(limit *int64) *PublicListGlobalAchievementsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the public list global achievements params
func (o *PublicListGlobalAchievementsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the public list global achievements params
func (o *PublicListGlobalAchievementsParams) WithOffset(offset *int64) *PublicListGlobalAchievementsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the public list global achievements params
func (o *PublicListGlobalAchievementsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the public list global achievements params
func (o *PublicListGlobalAchievementsParams) WithSortBy(sortBy *string) *PublicListGlobalAchievementsParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the public list global achievements params
func (o *PublicListGlobalAchievementsParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WithStatus adds the status to the public list global achievements params
func (o *PublicListGlobalAchievementsParams) WithStatus(status *string) *PublicListGlobalAchievementsParams {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the public list global achievements params
func (o *PublicListGlobalAchievementsParams) SetStatus(status *string) {
	o.Status = status
}

// WithTags adds the tags to the public list global achievements params
func (o *PublicListGlobalAchievementsParams) WithTags(tags []string) *PublicListGlobalAchievementsParams {
	o.SetTags(tags)
	return o
}

// SetTags adds the tags to the public list global achievements params
func (o *PublicListGlobalAchievementsParams) SetTags(tags []string) {
	o.Tags = tags
}

// WriteToRequest writes these params to a swagger request
func (o *PublicListGlobalAchievementsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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

	if o.Status != nil {

		// query param status
		var qrStatus string
		if o.Status != nil {
			qrStatus = *o.Status
		}
		qStatus := qrStatus
		if qStatus != "" {
			if err := r.SetQueryParam("status", qStatus); err != nil {
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
