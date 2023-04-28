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

// NewListGlobalAchievementContributorsParams creates a new ListGlobalAchievementContributorsParams object
// with the default values initialized.
func NewListGlobalAchievementContributorsParams() *ListGlobalAchievementContributorsParams {
	var (
		limitDefault  = int64(10)
		offsetDefault = int64(0)
		sortByDefault = string("contributedValue:desc")
	)
	return &ListGlobalAchievementContributorsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewListGlobalAchievementContributorsParamsWithTimeout creates a new ListGlobalAchievementContributorsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewListGlobalAchievementContributorsParamsWithTimeout(timeout time.Duration) *ListGlobalAchievementContributorsParams {
	var (
		limitDefault  = int64(10)
		offsetDefault = int64(0)
		sortByDefault = string("contributedValue:desc")
	)
	return &ListGlobalAchievementContributorsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		timeout: timeout,
	}
}

// NewListGlobalAchievementContributorsParamsWithContext creates a new ListGlobalAchievementContributorsParams object
// with the default values initialized, and the ability to set a context for a request
func NewListGlobalAchievementContributorsParamsWithContext(ctx context.Context) *ListGlobalAchievementContributorsParams {
	var (
		limitDefault  = int64(10)
		offsetDefault = int64(0)
		sortByDefault = string("contributedValue:desc")
	)
	return &ListGlobalAchievementContributorsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		Context: ctx,
	}
}

// NewListGlobalAchievementContributorsParamsWithHTTPClient creates a new ListGlobalAchievementContributorsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewListGlobalAchievementContributorsParamsWithHTTPClient(client *http.Client) *ListGlobalAchievementContributorsParams {
	var (
		limitDefault  = int64(10)
		offsetDefault = int64(0)
		sortByDefault = string("contributedValue:desc")
	)
	return &ListGlobalAchievementContributorsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		SortBy:     &sortByDefault,
		HTTPClient: client,
	}
}

/*ListGlobalAchievementContributorsParams contains all the parameters to send to the API endpoint
for the list global achievement contributors operation typically these are written to a http.Request
*/
type ListGlobalAchievementContributorsParams struct {

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
}

// WithTimeout adds the timeout to the list global achievement contributors params
func (o *ListGlobalAchievementContributorsParams) WithTimeout(timeout time.Duration) *ListGlobalAchievementContributorsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the list global achievement contributors params
func (o *ListGlobalAchievementContributorsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the list global achievement contributors params
func (o *ListGlobalAchievementContributorsParams) WithContext(ctx context.Context) *ListGlobalAchievementContributorsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the list global achievement contributors params
func (o *ListGlobalAchievementContributorsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the list global achievement contributors params
func (o *ListGlobalAchievementContributorsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the list global achievement contributors params
func (o *ListGlobalAchievementContributorsParams) WithHTTPClient(client *http.Client) *ListGlobalAchievementContributorsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the list global achievement contributors params
func (o *ListGlobalAchievementContributorsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the list global achievement contributors params
func (o *ListGlobalAchievementContributorsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithAchievementCode adds the achievementCode to the list global achievement contributors params
func (o *ListGlobalAchievementContributorsParams) WithAchievementCode(achievementCode string) *ListGlobalAchievementContributorsParams {
	o.SetAchievementCode(achievementCode)
	return o
}

// SetAchievementCode adds the achievementCode to the list global achievement contributors params
func (o *ListGlobalAchievementContributorsParams) SetAchievementCode(achievementCode string) {
	o.AchievementCode = achievementCode
}

// WithNamespace adds the namespace to the list global achievement contributors params
func (o *ListGlobalAchievementContributorsParams) WithNamespace(namespace string) *ListGlobalAchievementContributorsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the list global achievement contributors params
func (o *ListGlobalAchievementContributorsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the list global achievement contributors params
func (o *ListGlobalAchievementContributorsParams) WithLimit(limit *int64) *ListGlobalAchievementContributorsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the list global achievement contributors params
func (o *ListGlobalAchievementContributorsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the list global achievement contributors params
func (o *ListGlobalAchievementContributorsParams) WithOffset(offset *int64) *ListGlobalAchievementContributorsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the list global achievement contributors params
func (o *ListGlobalAchievementContributorsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the list global achievement contributors params
func (o *ListGlobalAchievementContributorsParams) WithSortBy(sortBy *string) *ListGlobalAchievementContributorsParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the list global achievement contributors params
func (o *ListGlobalAchievementContributorsParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WriteToRequest writes these params to a swagger request
func (o *ListGlobalAchievementContributorsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
