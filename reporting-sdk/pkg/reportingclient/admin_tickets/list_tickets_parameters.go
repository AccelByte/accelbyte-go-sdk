// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_tickets

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

// NewListTicketsParams creates a new ListTicketsParams object
// with the default values initialized.
func NewListTicketsParams() *ListTicketsParams {
	var ()
	return &ListTicketsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewListTicketsParamsWithTimeout creates a new ListTicketsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewListTicketsParamsWithTimeout(timeout time.Duration) *ListTicketsParams {
	var ()
	return &ListTicketsParams{

		timeout: timeout,
	}
}

// NewListTicketsParamsWithContext creates a new ListTicketsParams object
// with the default values initialized, and the ability to set a context for a request
func NewListTicketsParamsWithContext(ctx context.Context) *ListTicketsParams {
	var ()
	return &ListTicketsParams{

		Context: ctx,
	}
}

// NewListTicketsParamsWithHTTPClient creates a new ListTicketsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewListTicketsParamsWithHTTPClient(client *http.Client) *ListTicketsParams {
	var ()
	return &ListTicketsParams{
		HTTPClient: client,
	}
}

/*ListTicketsParams contains all the parameters to send to the API endpoint
for the list tickets operation typically these are written to a http.Request
*/
type ListTicketsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*Category
	  filter tickets by category

	*/
	Category *string
	/*ExtensionCategory
	  filter tickets by extension category

	*/
	ExtensionCategory *string
	/*Limit
	  number of data requested (default 25)

	*/
	Limit *int64
	/*Offset
	  number of data offset (default 0)

	*/
	Offset *int64
	/*Order
	  data order, asc or desc (default: desc)

	*/
	Order *string
	/*ReportedUserID
	  filter reports by reportedUserId

	*/
	ReportedUserID *string
	/*SortBy
	  data order key, valid keys are createdAt, reportsCount, and status (default: createdAt)

	*/
	SortBy *string
	/*Status
	  filter tickets by status (OPEN, AUTO_MODERATED or CLOSED)

	*/
	Status *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the list tickets params
func (o *ListTicketsParams) WithTimeout(timeout time.Duration) *ListTicketsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the list tickets params
func (o *ListTicketsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the list tickets params
func (o *ListTicketsParams) WithContext(ctx context.Context) *ListTicketsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the list tickets params
func (o *ListTicketsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the list tickets params
func (o *ListTicketsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the list tickets params
func (o *ListTicketsParams) WithHTTPClient(client *http.Client) *ListTicketsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the list tickets params
func (o *ListTicketsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the list tickets params
func (o *ListTicketsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ListTicketsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the list tickets params
func (o *ListTicketsParams) WithNamespace(namespace string) *ListTicketsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the list tickets params
func (o *ListTicketsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithCategory adds the category to the list tickets params
func (o *ListTicketsParams) WithCategory(category *string) *ListTicketsParams {
	o.SetCategory(category)
	return o
}

// SetCategory adds the category to the list tickets params
func (o *ListTicketsParams) SetCategory(category *string) {
	o.Category = category
}

// WithExtensionCategory adds the extensionCategory to the list tickets params
func (o *ListTicketsParams) WithExtensionCategory(extensionCategory *string) *ListTicketsParams {
	o.SetExtensionCategory(extensionCategory)
	return o
}

// SetExtensionCategory adds the extensionCategory to the list tickets params
func (o *ListTicketsParams) SetExtensionCategory(extensionCategory *string) {
	o.ExtensionCategory = extensionCategory
}

// WithLimit adds the limit to the list tickets params
func (o *ListTicketsParams) WithLimit(limit *int64) *ListTicketsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the list tickets params
func (o *ListTicketsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the list tickets params
func (o *ListTicketsParams) WithOffset(offset *int64) *ListTicketsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the list tickets params
func (o *ListTicketsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithOrder adds the order to the list tickets params
func (o *ListTicketsParams) WithOrder(order *string) *ListTicketsParams {
	o.SetOrder(order)
	return o
}

// SetOrder adds the order to the list tickets params
func (o *ListTicketsParams) SetOrder(order *string) {
	o.Order = order
}

// WithReportedUserID adds the reportedUserID to the list tickets params
func (o *ListTicketsParams) WithReportedUserID(reportedUserID *string) *ListTicketsParams {
	o.SetReportedUserID(reportedUserID)
	return o
}

// SetReportedUserID adds the reportedUserId to the list tickets params
func (o *ListTicketsParams) SetReportedUserID(reportedUserID *string) {
	o.ReportedUserID = reportedUserID
}

// WithSortBy adds the sortBy to the list tickets params
func (o *ListTicketsParams) WithSortBy(sortBy *string) *ListTicketsParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the list tickets params
func (o *ListTicketsParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WithStatus adds the status to the list tickets params
func (o *ListTicketsParams) WithStatus(status *string) *ListTicketsParams {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the list tickets params
func (o *ListTicketsParams) SetStatus(status *string) {
	o.Status = status
}

// WriteToRequest writes these params to a swagger request
func (o *ListTicketsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.ExtensionCategory != nil {

		// query param extensionCategory
		var qrExtensionCategory string
		if o.ExtensionCategory != nil {
			qrExtensionCategory = *o.ExtensionCategory
		}
		qExtensionCategory := qrExtensionCategory
		if qExtensionCategory != "" {
			if err := r.SetQueryParam("extensionCategory", qExtensionCategory); err != nil {
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

	if o.Order != nil {

		// query param order
		var qrOrder string
		if o.Order != nil {
			qrOrder = *o.Order
		}
		qOrder := qrOrder
		if qOrder != "" {
			if err := r.SetQueryParam("order", qOrder); err != nil {
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
