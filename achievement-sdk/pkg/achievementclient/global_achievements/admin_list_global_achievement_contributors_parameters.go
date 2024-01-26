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

// NewAdminListGlobalAchievementContributorsParams creates a new AdminListGlobalAchievementContributorsParams object
// with the default values initialized.
func NewAdminListGlobalAchievementContributorsParams() *AdminListGlobalAchievementContributorsParams {
	var (
		limitDefault  = int64(10)
		offsetDefault = int64(0)
		sortByDefault = string("contributedValue:desc")
	)
	return &AdminListGlobalAchievementContributorsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminListGlobalAchievementContributorsParamsWithTimeout creates a new AdminListGlobalAchievementContributorsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminListGlobalAchievementContributorsParamsWithTimeout(timeout time.Duration) *AdminListGlobalAchievementContributorsParams {
	var (
		limitDefault  = int64(10)
		offsetDefault = int64(0)
		sortByDefault = string("contributedValue:desc")
	)
	return &AdminListGlobalAchievementContributorsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		timeout: timeout,
	}
}

// NewAdminListGlobalAchievementContributorsParamsWithContext creates a new AdminListGlobalAchievementContributorsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminListGlobalAchievementContributorsParamsWithContext(ctx context.Context) *AdminListGlobalAchievementContributorsParams {
	var (
		limitDefault  = int64(10)
		offsetDefault = int64(0)
		sortByDefault = string("contributedValue:desc")
	)
	return &AdminListGlobalAchievementContributorsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		Context: ctx,
	}
}

// NewAdminListGlobalAchievementContributorsParamsWithHTTPClient creates a new AdminListGlobalAchievementContributorsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminListGlobalAchievementContributorsParamsWithHTTPClient(client *http.Client) *AdminListGlobalAchievementContributorsParams {
	var (
		limitDefault  = int64(10)
		offsetDefault = int64(0)
		sortByDefault = string("contributedValue:desc")
	)
	return &AdminListGlobalAchievementContributorsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		SortBy:     &sortByDefault,
		HTTPClient: client,
	}
}

/*AdminListGlobalAchievementContributorsParams contains all the parameters to send to the API endpoint
for the admin list global achievement contributors operation typically these are written to a http.Request
*/
type AdminListGlobalAchievementContributorsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*AchievementCode
	  achievement code

	*/
	AchievementCode string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
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

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin list global achievement contributors params
func (o *AdminListGlobalAchievementContributorsParams) WithTimeout(timeout time.Duration) *AdminListGlobalAchievementContributorsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin list global achievement contributors params
func (o *AdminListGlobalAchievementContributorsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin list global achievement contributors params
func (o *AdminListGlobalAchievementContributorsParams) WithContext(ctx context.Context) *AdminListGlobalAchievementContributorsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin list global achievement contributors params
func (o *AdminListGlobalAchievementContributorsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin list global achievement contributors params
func (o *AdminListGlobalAchievementContributorsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin list global achievement contributors params
func (o *AdminListGlobalAchievementContributorsParams) WithHTTPClient(client *http.Client) *AdminListGlobalAchievementContributorsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin list global achievement contributors params
func (o *AdminListGlobalAchievementContributorsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin list global achievement contributors params
func (o *AdminListGlobalAchievementContributorsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminListGlobalAchievementContributorsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithAchievementCode adds the achievementCode to the admin list global achievement contributors params
func (o *AdminListGlobalAchievementContributorsParams) WithAchievementCode(achievementCode string) *AdminListGlobalAchievementContributorsParams {
	o.SetAchievementCode(achievementCode)
	return o
}

// SetAchievementCode adds the achievementCode to the admin list global achievement contributors params
func (o *AdminListGlobalAchievementContributorsParams) SetAchievementCode(achievementCode string) {
	o.AchievementCode = achievementCode
}

// WithNamespace adds the namespace to the admin list global achievement contributors params
func (o *AdminListGlobalAchievementContributorsParams) WithNamespace(namespace string) *AdminListGlobalAchievementContributorsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin list global achievement contributors params
func (o *AdminListGlobalAchievementContributorsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the admin list global achievement contributors params
func (o *AdminListGlobalAchievementContributorsParams) WithLimit(limit *int64) *AdminListGlobalAchievementContributorsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin list global achievement contributors params
func (o *AdminListGlobalAchievementContributorsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin list global achievement contributors params
func (o *AdminListGlobalAchievementContributorsParams) WithOffset(offset *int64) *AdminListGlobalAchievementContributorsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin list global achievement contributors params
func (o *AdminListGlobalAchievementContributorsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the admin list global achievement contributors params
func (o *AdminListGlobalAchievementContributorsParams) WithSortBy(sortBy *string) *AdminListGlobalAchievementContributorsParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the admin list global achievement contributors params
func (o *AdminListGlobalAchievementContributorsParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WriteToRequest writes these params to a swagger request
func (o *AdminListGlobalAchievementContributorsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param achievementCode
	if err := r.SetPathParam("achievementCode", o.AchievementCode); err != nil {
		return err
	}

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
