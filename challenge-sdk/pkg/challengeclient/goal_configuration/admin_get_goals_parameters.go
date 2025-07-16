// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package goal_configuration

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

// Deprecated: 2025-07-16 - Use AdminGetGoalsSortBy<EnumValue>Constant instead.
// Get the enum in AdminGetGoalsParams
const (
	AdminGetGoalsCreatedAtConstant     = "createdAt"
	AdminGetGoalsCreatedAtAscConstant  = "createdAt:asc"
	AdminGetGoalsCreatedAtDescConstant = "createdAt:desc"
	AdminGetGoalsUpdatedAtConstant     = "updatedAt"
	AdminGetGoalsUpdatedAtAscConstant  = "updatedAt:asc"
	AdminGetGoalsUpdatedAtDescConstant = "updatedAt:desc"
)

// Get the enum in AdminGetGoalsParams
const (
	AdminGetGoalsSortByCreatedAtConstant     = "createdAt"
	AdminGetGoalsSortByCreatedAtAscConstant  = "createdAt:asc"
	AdminGetGoalsSortByCreatedAtDescConstant = "createdAt:desc"
	AdminGetGoalsSortByUpdatedAtConstant     = "updatedAt"
	AdminGetGoalsSortByUpdatedAtAscConstant  = "updatedAt:asc"
	AdminGetGoalsSortByUpdatedAtDescConstant = "updatedAt:desc"
)

// NewAdminGetGoalsParams creates a new AdminGetGoalsParams object
// with the default values initialized.
func NewAdminGetGoalsParams() *AdminGetGoalsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetGoalsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetGoalsParamsWithTimeout creates a new AdminGetGoalsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetGoalsParamsWithTimeout(timeout time.Duration) *AdminGetGoalsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetGoalsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewAdminGetGoalsParamsWithContext creates a new AdminGetGoalsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetGoalsParamsWithContext(ctx context.Context) *AdminGetGoalsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetGoalsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewAdminGetGoalsParamsWithHTTPClient creates a new AdminGetGoalsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetGoalsParamsWithHTTPClient(client *http.Client) *AdminGetGoalsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetGoalsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*AdminGetGoalsParams contains all the parameters to send to the API endpoint
for the admin get goals operation typically these are written to a http.Request
*/
type AdminGetGoalsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ChallengeCode
	  challenge code

	*/
	ChallengeCode string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Limit
	  limit the amount of data retrieved

	*/
	Limit *int64
	/*Offset
	  offset

	*/
	Offset *int64
	/*SortBy
	    sort list by attributes.
				default value: updatedAt:desc.

	*/
	SortBy *string
	/*Tags
	  filter list by tags

	*/
	Tags []string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get goals params
func (o *AdminGetGoalsParams) WithTimeout(timeout time.Duration) *AdminGetGoalsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get goals params
func (o *AdminGetGoalsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get goals params
func (o *AdminGetGoalsParams) WithContext(ctx context.Context) *AdminGetGoalsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get goals params
func (o *AdminGetGoalsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get goals params
func (o *AdminGetGoalsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get goals params
func (o *AdminGetGoalsParams) WithHTTPClient(client *http.Client) *AdminGetGoalsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get goals params
func (o *AdminGetGoalsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get goals params
func (o *AdminGetGoalsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetGoalsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithChallengeCode adds the challengeCode to the admin get goals params
func (o *AdminGetGoalsParams) WithChallengeCode(challengeCode string) *AdminGetGoalsParams {
	o.SetChallengeCode(challengeCode)
	return o
}

// SetChallengeCode adds the challengeCode to the admin get goals params
func (o *AdminGetGoalsParams) SetChallengeCode(challengeCode string) {
	o.ChallengeCode = challengeCode
}

// WithNamespace adds the namespace to the admin get goals params
func (o *AdminGetGoalsParams) WithNamespace(namespace string) *AdminGetGoalsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get goals params
func (o *AdminGetGoalsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the admin get goals params
func (o *AdminGetGoalsParams) WithLimit(limit *int64) *AdminGetGoalsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin get goals params
func (o *AdminGetGoalsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin get goals params
func (o *AdminGetGoalsParams) WithOffset(offset *int64) *AdminGetGoalsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin get goals params
func (o *AdminGetGoalsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the admin get goals params
func (o *AdminGetGoalsParams) WithSortBy(sortBy *string) *AdminGetGoalsParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the admin get goals params
func (o *AdminGetGoalsParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WithTags adds the tags to the admin get goals params
func (o *AdminGetGoalsParams) WithTags(tags []string) *AdminGetGoalsParams {
	o.SetTags(tags)
	return o
}

// SetTags adds the tags to the admin get goals params
func (o *AdminGetGoalsParams) SetTags(tags []string) {
	o.Tags = tags
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetGoalsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param challengeCode
	if err := r.SetPathParam("challengeCode", o.ChallengeCode); err != nil {
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
