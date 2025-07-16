// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package order

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

// Deprecated: 2025-07-16 - Use QueryOrdersStatus<EnumValue>Constant instead.
// Get the enum in QueryOrdersParams
const (
	QueryOrdersCHARGEBACKConstant         = "CHARGEBACK"
	QueryOrdersCHARGEBACKREVERSEDConstant = "CHARGEBACK_REVERSED"
	QueryOrdersCHARGEDConstant            = "CHARGED"
	QueryOrdersCLOSEDConstant             = "CLOSED"
	QueryOrdersDELETEDConstant            = "DELETED"
	QueryOrdersFULFILLEDConstant          = "FULFILLED"
	QueryOrdersFULFILLFAILEDConstant      = "FULFILL_FAILED"
	QueryOrdersINITConstant               = "INIT"
	QueryOrdersREFUNDEDConstant           = "REFUNDED"
	QueryOrdersREFUNDINGConstant          = "REFUNDING"
	QueryOrdersREFUNDFAILEDConstant       = "REFUND_FAILED"
)

// Get the enum in QueryOrdersParams
const (
	QueryOrdersStatusCHARGEBACKConstant         = "CHARGEBACK"
	QueryOrdersStatusCHARGEBACKREVERSEDConstant = "CHARGEBACK_REVERSED"
	QueryOrdersStatusCHARGEDConstant            = "CHARGED"
	QueryOrdersStatusCLOSEDConstant             = "CLOSED"
	QueryOrdersStatusDELETEDConstant            = "DELETED"
	QueryOrdersStatusFULFILLEDConstant          = "FULFILLED"
	QueryOrdersStatusFULFILLFAILEDConstant      = "FULFILL_FAILED"
	QueryOrdersStatusINITConstant               = "INIT"
	QueryOrdersStatusREFUNDEDConstant           = "REFUNDED"
	QueryOrdersStatusREFUNDINGConstant          = "REFUNDING"
	QueryOrdersStatusREFUNDFAILEDConstant       = "REFUND_FAILED"
)

// NewQueryOrdersParams creates a new QueryOrdersParams object
// with the default values initialized.
func NewQueryOrdersParams() *QueryOrdersParams {
	var (
		limitDefault     = int32(20)
		offsetDefault    = int32(0)
		sortByDefault    = string("createdTime:desc")
		withTotalDefault = bool(false)
	)
	return &QueryOrdersParams{
		Limit:     &limitDefault,
		Offset:    &offsetDefault,
		SortBy:    &sortByDefault,
		WithTotal: &withTotalDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryOrdersParamsWithTimeout creates a new QueryOrdersParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryOrdersParamsWithTimeout(timeout time.Duration) *QueryOrdersParams {
	var (
		limitDefault     = int32(20)
		offsetDefault    = int32(0)
		sortByDefault    = string("createdTime:desc")
		withTotalDefault = bool(false)
	)
	return &QueryOrdersParams{
		Limit:     &limitDefault,
		Offset:    &offsetDefault,
		SortBy:    &sortByDefault,
		WithTotal: &withTotalDefault,

		timeout: timeout,
	}
}

// NewQueryOrdersParamsWithContext creates a new QueryOrdersParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryOrdersParamsWithContext(ctx context.Context) *QueryOrdersParams {
	var (
		limitDefault     = int32(20)
		offsetDefault    = int32(0)
		sortByDefault    = string("createdTime:desc")
		withTotalDefault = bool(false)
	)
	return &QueryOrdersParams{
		Limit:     &limitDefault,
		Offset:    &offsetDefault,
		SortBy:    &sortByDefault,
		WithTotal: &withTotalDefault,

		Context: ctx,
	}
}

// NewQueryOrdersParamsWithHTTPClient creates a new QueryOrdersParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryOrdersParamsWithHTTPClient(client *http.Client) *QueryOrdersParams {
	var (
		limitDefault     = int32(20)
		offsetDefault    = int32(0)
		sortByDefault    = string("createdTime:desc")
		withTotalDefault = bool(false)
	)
	return &QueryOrdersParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		SortBy:     &sortByDefault,
		WithTotal:  &withTotalDefault,
		HTTPClient: client,
	}
}

/*QueryOrdersParams contains all the parameters to send to the API endpoint
for the query orders operation typically these are written to a http.Request
*/
type QueryOrdersParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*EndTime
	  end time is exclusive, using ISO 8601 format e.g. yyyy-MM-dd'T'HH:mm:ssZZ

	*/
	EndTime *string
	/*Limit
	    limit. <div style="border-left: 4px solid #ffc107; background-color: #fff8e1; padding: 10px; margin: 10px 0;">
	    For performance and stability reasons, it is recommended to keep the
	    <code>limit</code> value <strong>no greater than 100</strong>. Using higher values may lead to increased response times or degraded service performance.
	</div>


	*/
	Limit *int32
	/*Offset*/
	Offset *int32
	/*OrderNos*/
	OrderNos []string
	/*SortBy
	  default is createdTime:desc, support sort group, e.g. sortBy=status:asc,createdTime:desc

	*/
	SortBy *string
	/*StartTime
	  start time is inclusive, using ISO 8601 format e.g. yyyy-MM-dd'T'HH:mm:ssZZ

	*/
	StartTime *string
	/*Status*/
	Status *string
	/*WithTotal
	  return total in slice result when true

	*/
	WithTotal *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the query orders params
func (o *QueryOrdersParams) WithTimeout(timeout time.Duration) *QueryOrdersParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query orders params
func (o *QueryOrdersParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query orders params
func (o *QueryOrdersParams) WithContext(ctx context.Context) *QueryOrdersParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query orders params
func (o *QueryOrdersParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query orders params
func (o *QueryOrdersParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query orders params
func (o *QueryOrdersParams) WithHTTPClient(client *http.Client) *QueryOrdersParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query orders params
func (o *QueryOrdersParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query orders params
func (o *QueryOrdersParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryOrdersParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the query orders params
func (o *QueryOrdersParams) WithNamespace(namespace string) *QueryOrdersParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query orders params
func (o *QueryOrdersParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithEndTime adds the endTime to the query orders params
func (o *QueryOrdersParams) WithEndTime(endTime *string) *QueryOrdersParams {
	o.SetEndTime(endTime)
	return o
}

// SetEndTime adds the endTime to the query orders params
func (o *QueryOrdersParams) SetEndTime(endTime *string) {
	o.EndTime = endTime
}

// WithLimit adds the limit to the query orders params
func (o *QueryOrdersParams) WithLimit(limit *int32) *QueryOrdersParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query orders params
func (o *QueryOrdersParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the query orders params
func (o *QueryOrdersParams) WithOffset(offset *int32) *QueryOrdersParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query orders params
func (o *QueryOrdersParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithOrderNos adds the orderNos to the query orders params
func (o *QueryOrdersParams) WithOrderNos(orderNos []string) *QueryOrdersParams {
	o.SetOrderNos(orderNos)
	return o
}

// SetOrderNos adds the orderNos to the query orders params
func (o *QueryOrdersParams) SetOrderNos(orderNos []string) {
	o.OrderNos = orderNos
}

// WithSortBy adds the sortBy to the query orders params
func (o *QueryOrdersParams) WithSortBy(sortBy *string) *QueryOrdersParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the query orders params
func (o *QueryOrdersParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WithStartTime adds the startTime to the query orders params
func (o *QueryOrdersParams) WithStartTime(startTime *string) *QueryOrdersParams {
	o.SetStartTime(startTime)
	return o
}

// SetStartTime adds the startTime to the query orders params
func (o *QueryOrdersParams) SetStartTime(startTime *string) {
	o.StartTime = startTime
}

// WithStatus adds the status to the query orders params
func (o *QueryOrdersParams) WithStatus(status *string) *QueryOrdersParams {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the query orders params
func (o *QueryOrdersParams) SetStatus(status *string) {
	o.Status = status
}

// WithWithTotal_ adds the withTotal to the query orders params
func (o *QueryOrdersParams) WithWithTotal_(withTotal *bool) *QueryOrdersParams {
	o.SetWithTotal(withTotal)
	return o
}

// SetWithTotal adds the withTotal to the query orders params
func (o *QueryOrdersParams) SetWithTotal(withTotal *bool) {
	o.WithTotal = withTotal
}

// WriteToRequest writes these params to a swagger request
func (o *QueryOrdersParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.EndTime != nil {

		// query param endTime
		var qrEndTime string
		if o.EndTime != nil {
			qrEndTime = *o.EndTime
		}
		qEndTime := qrEndTime
		if qEndTime != "" {
			if err := r.SetQueryParam("endTime", qEndTime); err != nil {
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

	valuesOrderNos := o.OrderNos

	joinedOrderNos := swag.JoinByFormat(valuesOrderNos, "multi")
	// query array param orderNos
	if err := r.SetQueryParam("orderNos", joinedOrderNos...); err != nil {
		return err
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

	if o.StartTime != nil {

		// query param startTime
		var qrStartTime string
		if o.StartTime != nil {
			qrStartTime = *o.StartTime
		}
		qStartTime := qrStartTime
		if qStartTime != "" {
			if err := r.SetQueryParam("startTime", qStartTime); err != nil {
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

	if o.WithTotal != nil {

		// query param withTotal
		var qrWithTotal bool
		if o.WithTotal != nil {
			qrWithTotal = *o.WithTotal
		}
		qWithTotal := swag.FormatBool(qrWithTotal)
		if qWithTotal != "" {
			if err := r.SetQueryParam("withTotal", qWithTotal); err != nil {
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
