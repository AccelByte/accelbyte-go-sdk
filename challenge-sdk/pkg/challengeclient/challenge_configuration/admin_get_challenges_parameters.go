// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package challenge_configuration

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

// Deprecated: 2025-07-16 - Use AdminGetChallengesSortBy<EnumValue>Constant instead.
// Get the enum in AdminGetChallengesParams
const (
	AdminGetChallengesCreatedAtConstant     = "createdAt"
	AdminGetChallengesCreatedAtAscConstant  = "createdAt:asc"
	AdminGetChallengesCreatedAtDescConstant = "createdAt:desc"
	AdminGetChallengesUpdatedAtConstant     = "updatedAt"
	AdminGetChallengesUpdatedAtAscConstant  = "updatedAt:asc"
	AdminGetChallengesUpdatedAtDescConstant = "updatedAt:desc"
)

// Deprecated: 2025-07-16 - Use AdminGetChallengesStatus<EnumValue>Constant instead.
// Get the enum in AdminGetChallengesParams
const (
	AdminGetChallengesINITConstant    = "INIT"
	AdminGetChallengesRETIREDConstant = "RETIRED"
	AdminGetChallengesTIEDConstant    = "TIED"
)

// Get the enum in AdminGetChallengesParams
const (
	AdminGetChallengesSortByCreatedAtConstant     = "createdAt"
	AdminGetChallengesSortByCreatedAtAscConstant  = "createdAt:asc"
	AdminGetChallengesSortByCreatedAtDescConstant = "createdAt:desc"
	AdminGetChallengesSortByUpdatedAtConstant     = "updatedAt"
	AdminGetChallengesSortByUpdatedAtAscConstant  = "updatedAt:asc"
	AdminGetChallengesSortByUpdatedAtDescConstant = "updatedAt:desc"
)

// Get the enum in AdminGetChallengesParams
const (
	AdminGetChallengesStatusINITConstant    = "INIT"
	AdminGetChallengesStatusRETIREDConstant = "RETIRED"
	AdminGetChallengesStatusTIEDConstant    = "TIED"
)

// NewAdminGetChallengesParams creates a new AdminGetChallengesParams object
// with the default values initialized.
func NewAdminGetChallengesParams() *AdminGetChallengesParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetChallengesParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetChallengesParamsWithTimeout creates a new AdminGetChallengesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetChallengesParamsWithTimeout(timeout time.Duration) *AdminGetChallengesParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetChallengesParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewAdminGetChallengesParamsWithContext creates a new AdminGetChallengesParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetChallengesParamsWithContext(ctx context.Context) *AdminGetChallengesParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetChallengesParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewAdminGetChallengesParamsWithHTTPClient creates a new AdminGetChallengesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetChallengesParamsWithHTTPClient(client *http.Client) *AdminGetChallengesParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetChallengesParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*AdminGetChallengesParams contains all the parameters to send to the API endpoint
for the admin get challenges operation typically these are written to a http.Request
*/
type AdminGetChallengesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Keyword
	  filter challenges by code with likes behavior

	*/
	Keyword *string
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
	/*Status
	  challenge status

	*/
	Status *string
	/*Tags
	  filter challenges by tags, comma separated value

	*/
	Tags []string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get challenges params
func (o *AdminGetChallengesParams) WithTimeout(timeout time.Duration) *AdminGetChallengesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get challenges params
func (o *AdminGetChallengesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get challenges params
func (o *AdminGetChallengesParams) WithContext(ctx context.Context) *AdminGetChallengesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get challenges params
func (o *AdminGetChallengesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get challenges params
func (o *AdminGetChallengesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get challenges params
func (o *AdminGetChallengesParams) WithHTTPClient(client *http.Client) *AdminGetChallengesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get challenges params
func (o *AdminGetChallengesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get challenges params
func (o *AdminGetChallengesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetChallengesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get challenges params
func (o *AdminGetChallengesParams) WithNamespace(namespace string) *AdminGetChallengesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get challenges params
func (o *AdminGetChallengesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithKeyword adds the keyword to the admin get challenges params
func (o *AdminGetChallengesParams) WithKeyword(keyword *string) *AdminGetChallengesParams {
	o.SetKeyword(keyword)
	return o
}

// SetKeyword adds the keyword to the admin get challenges params
func (o *AdminGetChallengesParams) SetKeyword(keyword *string) {
	o.Keyword = keyword
}

// WithLimit adds the limit to the admin get challenges params
func (o *AdminGetChallengesParams) WithLimit(limit *int64) *AdminGetChallengesParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin get challenges params
func (o *AdminGetChallengesParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin get challenges params
func (o *AdminGetChallengesParams) WithOffset(offset *int64) *AdminGetChallengesParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin get challenges params
func (o *AdminGetChallengesParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the admin get challenges params
func (o *AdminGetChallengesParams) WithSortBy(sortBy *string) *AdminGetChallengesParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the admin get challenges params
func (o *AdminGetChallengesParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WithStatus adds the status to the admin get challenges params
func (o *AdminGetChallengesParams) WithStatus(status *string) *AdminGetChallengesParams {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the admin get challenges params
func (o *AdminGetChallengesParams) SetStatus(status *string) {
	o.Status = status
}

// WithTags adds the tags to the admin get challenges params
func (o *AdminGetChallengesParams) WithTags(tags []string) *AdminGetChallengesParams {
	o.SetTags(tags)
	return o
}

// SetTags adds the tags to the admin get challenges params
func (o *AdminGetChallengesParams) SetTags(tags []string) {
	o.Tags = tags
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetChallengesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Keyword != nil {

		// query param keyword
		var qrKeyword string
		if o.Keyword != nil {
			qrKeyword = *o.Keyword
		}
		qKeyword := qrKeyword
		if qKeyword != "" {
			if err := r.SetQueryParam("keyword", qKeyword); err != nil {
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
