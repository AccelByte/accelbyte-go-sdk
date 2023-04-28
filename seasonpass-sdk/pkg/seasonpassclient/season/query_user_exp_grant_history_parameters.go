// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package season

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

// Get the enum in QueryUserExpGrantHistoryParams
const (
	QueryUserExpGrantHistoryPAIDFORConstant = "PAID_FOR"
	QueryUserExpGrantHistorySWEATConstant   = "SWEAT"
)

// NewQueryUserExpGrantHistoryParams creates a new QueryUserExpGrantHistoryParams object
// with the default values initialized.
func NewQueryUserExpGrantHistoryParams() *QueryUserExpGrantHistoryParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryUserExpGrantHistoryParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryUserExpGrantHistoryParamsWithTimeout creates a new QueryUserExpGrantHistoryParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryUserExpGrantHistoryParamsWithTimeout(timeout time.Duration) *QueryUserExpGrantHistoryParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryUserExpGrantHistoryParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewQueryUserExpGrantHistoryParamsWithContext creates a new QueryUserExpGrantHistoryParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryUserExpGrantHistoryParamsWithContext(ctx context.Context) *QueryUserExpGrantHistoryParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryUserExpGrantHistoryParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewQueryUserExpGrantHistoryParamsWithHTTPClient creates a new QueryUserExpGrantHistoryParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryUserExpGrantHistoryParamsWithHTTPClient(client *http.Client) *QueryUserExpGrantHistoryParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryUserExpGrantHistoryParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*QueryUserExpGrantHistoryParams contains all the parameters to send to the API endpoint
for the query user exp grant history operation typically these are written to a http.Request
*/
type QueryUserExpGrantHistoryParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*UserID*/
	UserID string
	/*From
	  section active range time start , using ISO 8601 format e.g. yyyy-MM-dd'T'HH:mm:ssZZ

	*/
	From *string
	/*Limit
	  limit

	*/
	Limit *int32
	/*Offset
	  offset

	*/
	Offset *int32
	/*SeasonID
	  if not provide, will query current season

	*/
	SeasonID *string
	/*Source
	  exp grant source

	*/
	Source *string
	/*Tags
	  exp grant tags

	*/
	Tags []string
	/*To
	  section active range time end, using ISO 8601 format e.g. yyyy-MM-dd'T'HH:mm:ssZZ

	*/
	To *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the query user exp grant history params
func (o *QueryUserExpGrantHistoryParams) WithTimeout(timeout time.Duration) *QueryUserExpGrantHistoryParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query user exp grant history params
func (o *QueryUserExpGrantHistoryParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query user exp grant history params
func (o *QueryUserExpGrantHistoryParams) WithContext(ctx context.Context) *QueryUserExpGrantHistoryParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query user exp grant history params
func (o *QueryUserExpGrantHistoryParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query user exp grant history params
func (o *QueryUserExpGrantHistoryParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query user exp grant history params
func (o *QueryUserExpGrantHistoryParams) WithHTTPClient(client *http.Client) *QueryUserExpGrantHistoryParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query user exp grant history params
func (o *QueryUserExpGrantHistoryParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query user exp grant history params
func (o *QueryUserExpGrantHistoryParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the query user exp grant history params
func (o *QueryUserExpGrantHistoryParams) WithNamespace(namespace string) *QueryUserExpGrantHistoryParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query user exp grant history params
func (o *QueryUserExpGrantHistoryParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the query user exp grant history params
func (o *QueryUserExpGrantHistoryParams) WithUserID(userID string) *QueryUserExpGrantHistoryParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the query user exp grant history params
func (o *QueryUserExpGrantHistoryParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithFrom adds the fromVar to the query user exp grant history params
func (o *QueryUserExpGrantHistoryParams) WithFrom(fromVar *string) *QueryUserExpGrantHistoryParams {
	o.SetFrom(fromVar)
	return o
}

// SetFrom adds the from to the query user exp grant history params
func (o *QueryUserExpGrantHistoryParams) SetFrom(fromVar *string) {
	o.From = fromVar
}

// WithLimit adds the limit to the query user exp grant history params
func (o *QueryUserExpGrantHistoryParams) WithLimit(limit *int32) *QueryUserExpGrantHistoryParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query user exp grant history params
func (o *QueryUserExpGrantHistoryParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the query user exp grant history params
func (o *QueryUserExpGrantHistoryParams) WithOffset(offset *int32) *QueryUserExpGrantHistoryParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query user exp grant history params
func (o *QueryUserExpGrantHistoryParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithSeasonID adds the seasonID to the query user exp grant history params
func (o *QueryUserExpGrantHistoryParams) WithSeasonID(seasonID *string) *QueryUserExpGrantHistoryParams {
	o.SetSeasonID(seasonID)
	return o
}

// SetSeasonID adds the seasonId to the query user exp grant history params
func (o *QueryUserExpGrantHistoryParams) SetSeasonID(seasonID *string) {
	o.SeasonID = seasonID
}

// WithSource adds the source to the query user exp grant history params
func (o *QueryUserExpGrantHistoryParams) WithSource(source *string) *QueryUserExpGrantHistoryParams {
	o.SetSource(source)
	return o
}

// SetSource adds the source to the query user exp grant history params
func (o *QueryUserExpGrantHistoryParams) SetSource(source *string) {
	o.Source = source
}

// WithTags adds the tags to the query user exp grant history params
func (o *QueryUserExpGrantHistoryParams) WithTags(tags []string) *QueryUserExpGrantHistoryParams {
	o.SetTags(tags)
	return o
}

// SetTags adds the tags to the query user exp grant history params
func (o *QueryUserExpGrantHistoryParams) SetTags(tags []string) {
	o.Tags = tags
}

// WithTo adds the to to the query user exp grant history params
func (o *QueryUserExpGrantHistoryParams) WithTo(to *string) *QueryUserExpGrantHistoryParams {
	o.SetTo(to)
	return o
}

// SetTo adds the to to the query user exp grant history params
func (o *QueryUserExpGrantHistoryParams) SetTo(to *string) {
	o.To = to
}

// WriteToRequest writes these params to a swagger request
func (o *QueryUserExpGrantHistoryParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.From != nil {

		// query param from
		var qrFrom string
		if o.From != nil {
			qrFrom = *o.From
		}
		qFrom := qrFrom
		if qFrom != "" {
			if err := r.SetQueryParam("from", qFrom); err != nil {
				return err
			}
		}

	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int32
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt32(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int32
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt32(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
		}

	}

	if o.SeasonID != nil {

		// query param seasonId
		var qrSeasonID string
		if o.SeasonID != nil {
			qrSeasonID = *o.SeasonID
		}
		qSeasonID := qrSeasonID
		if qSeasonID != "" {
			if err := r.SetQueryParam("seasonId", qSeasonID); err != nil {
				return err
			}
		}

	}

	if o.Source != nil {

		// query param source
		var qrSource string
		if o.Source != nil {
			qrSource = *o.Source
		}
		qSource := qrSource
		if qSource != "" {
			if err := r.SetQueryParam("source", qSource); err != nil {
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

	if o.To != nil {

		// query param to
		var qrTo string
		if o.To != nil {
			qrTo = *o.To
		}
		qTo := qrTo
		if qTo != "" {
			if err := r.SetQueryParam("to", qTo); err != nil {
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
