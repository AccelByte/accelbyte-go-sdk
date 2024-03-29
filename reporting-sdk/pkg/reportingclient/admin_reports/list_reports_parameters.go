// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_reports

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

// NewListReportsParams creates a new ListReportsParams object
// with the default values initialized.
func NewListReportsParams() *ListReportsParams {
	var (
		sortByDefault = string("createdAt:desc")
	)
	return &ListReportsParams{
		SortBy: &sortByDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewListReportsParamsWithTimeout creates a new ListReportsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewListReportsParamsWithTimeout(timeout time.Duration) *ListReportsParams {
	var (
		sortByDefault = string("createdAt:desc")
	)
	return &ListReportsParams{
		SortBy: &sortByDefault,

		timeout: timeout,
	}
}

// NewListReportsParamsWithContext creates a new ListReportsParams object
// with the default values initialized, and the ability to set a context for a request
func NewListReportsParamsWithContext(ctx context.Context) *ListReportsParams {
	var (
		sortByDefault = string("createdAt:desc")
	)
	return &ListReportsParams{
		SortBy: &sortByDefault,

		Context: ctx,
	}
}

// NewListReportsParamsWithHTTPClient creates a new ListReportsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewListReportsParamsWithHTTPClient(client *http.Client) *ListReportsParams {
	var (
		sortByDefault = string("createdAt:desc")
	)
	return &ListReportsParams{
		SortBy:     &sortByDefault,
		HTTPClient: client,
	}
}

/*ListReportsParams contains all the parameters to send to the API endpoint
for the list reports operation typically these are written to a http.Request
*/
type ListReportsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*Category
	  filter reports by category

	*/
	Category *string
	/*Limit
	  number of data requested (default 25)

	*/
	Limit *int64
	/*Offset
	  number of data offset (default 0)

	*/
	Offset *int64
	/*ReportedUserID
	  filter reports by reportedUserId

	*/
	ReportedUserID *string
	/*SortBy
	  Only support one level of sortBy; default createdAt:desc

	*/
	SortBy *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the list reports params
func (o *ListReportsParams) WithTimeout(timeout time.Duration) *ListReportsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the list reports params
func (o *ListReportsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the list reports params
func (o *ListReportsParams) WithContext(ctx context.Context) *ListReportsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the list reports params
func (o *ListReportsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the list reports params
func (o *ListReportsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the list reports params
func (o *ListReportsParams) WithHTTPClient(client *http.Client) *ListReportsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the list reports params
func (o *ListReportsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the list reports params
func (o *ListReportsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ListReportsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the list reports params
func (o *ListReportsParams) WithNamespace(namespace string) *ListReportsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the list reports params
func (o *ListReportsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithCategory adds the category to the list reports params
func (o *ListReportsParams) WithCategory(category *string) *ListReportsParams {
	o.SetCategory(category)
	return o
}

// SetCategory adds the category to the list reports params
func (o *ListReportsParams) SetCategory(category *string) {
	o.Category = category
}

// WithLimit adds the limit to the list reports params
func (o *ListReportsParams) WithLimit(limit *int64) *ListReportsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the list reports params
func (o *ListReportsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the list reports params
func (o *ListReportsParams) WithOffset(offset *int64) *ListReportsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the list reports params
func (o *ListReportsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithReportedUserID adds the reportedUserID to the list reports params
func (o *ListReportsParams) WithReportedUserID(reportedUserID *string) *ListReportsParams {
	o.SetReportedUserID(reportedUserID)
	return o
}

// SetReportedUserID adds the reportedUserId to the list reports params
func (o *ListReportsParams) SetReportedUserID(reportedUserID *string) {
	o.ReportedUserID = reportedUserID
}

// WithSortBy adds the sortBy to the list reports params
func (o *ListReportsParams) WithSortBy(sortBy *string) *ListReportsParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the list reports params
func (o *ListReportsParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WriteToRequest writes these params to a swagger request
func (o *ListReportsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Category != nil {

		// query param category
		var qrCategory string
		if o.Category != nil {
			qrCategory = *o.Category
		}
		qCategory := qrCategory
		if qCategory != "" {
			if err := r.SetQueryParam("category", qCategory); err != nil {
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

	if o.ReportedUserID != nil {

		// query param reportedUserId
		var qrReportedUserID string
		if o.ReportedUserID != nil {
			qrReportedUserID = *o.ReportedUserID
		}
		qReportedUserID := qrReportedUserID
		if qReportedUserID != "" {
			if err := r.SetQueryParam("reportedUserId", qReportedUserID); err != nil {
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
