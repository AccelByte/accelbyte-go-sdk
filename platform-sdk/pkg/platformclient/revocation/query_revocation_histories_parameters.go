// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package revocation

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

// Get the enum in QueryRevocationHistoriesParams
const (
	QueryRevocationHistoriesDLCConstant   = "DLC"
	QueryRevocationHistoriesIAPConstant   = "IAP"
	QueryRevocationHistoriesORDERConstant = "ORDER"
	QueryRevocationHistoriesOTHERConstant = "OTHER"
)

// Get the enum in QueryRevocationHistoriesParams
const (
	QueryRevocationHistoriesFAILConstant    = "FAIL"
	QueryRevocationHistoriesSUCCESSConstant = "SUCCESS"
)

// NewQueryRevocationHistoriesParams creates a new QueryRevocationHistoriesParams object
// with the default values initialized.
func NewQueryRevocationHistoriesParams() *QueryRevocationHistoriesParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryRevocationHistoriesParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryRevocationHistoriesParamsWithTimeout creates a new QueryRevocationHistoriesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryRevocationHistoriesParamsWithTimeout(timeout time.Duration) *QueryRevocationHistoriesParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryRevocationHistoriesParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewQueryRevocationHistoriesParamsWithContext creates a new QueryRevocationHistoriesParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryRevocationHistoriesParamsWithContext(ctx context.Context) *QueryRevocationHistoriesParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryRevocationHistoriesParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewQueryRevocationHistoriesParamsWithHTTPClient creates a new QueryRevocationHistoriesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryRevocationHistoriesParamsWithHTTPClient(client *http.Client) *QueryRevocationHistoriesParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryRevocationHistoriesParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*QueryRevocationHistoriesParams contains all the parameters to send to the API endpoint
for the query revocation histories operation typically these are written to a http.Request
*/
type QueryRevocationHistoriesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*EndTime
	  end time is exclusive, using ISO 8601 format e.g. yyyy-MM-dd'T'HH:mm:ssZ

	*/
	EndTime *string
	/*Limit*/
	Limit *int32
	/*Offset*/
	Offset *int32
	/*Source*/
	Source *string
	/*StartTime
	  start time is inclusive, using ISO 8601 format e.g. yyyy-MM-dd'T'HH:mm:ssZ

	*/
	StartTime *string
	/*Status*/
	Status *string
	/*TransactionID*/
	TransactionID *string
	/*UserID*/
	UserID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the query revocation histories params
func (o *QueryRevocationHistoriesParams) WithTimeout(timeout time.Duration) *QueryRevocationHistoriesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query revocation histories params
func (o *QueryRevocationHistoriesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query revocation histories params
func (o *QueryRevocationHistoriesParams) WithContext(ctx context.Context) *QueryRevocationHistoriesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query revocation histories params
func (o *QueryRevocationHistoriesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query revocation histories params
func (o *QueryRevocationHistoriesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query revocation histories params
func (o *QueryRevocationHistoriesParams) WithHTTPClient(client *http.Client) *QueryRevocationHistoriesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query revocation histories params
func (o *QueryRevocationHistoriesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query revocation histories params
func (o *QueryRevocationHistoriesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the query revocation histories params
func (o *QueryRevocationHistoriesParams) WithNamespace(namespace string) *QueryRevocationHistoriesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query revocation histories params
func (o *QueryRevocationHistoriesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithEndTime adds the endTime to the query revocation histories params
func (o *QueryRevocationHistoriesParams) WithEndTime(endTime *string) *QueryRevocationHistoriesParams {
	o.SetEndTime(endTime)
	return o
}

// SetEndTime adds the endTime to the query revocation histories params
func (o *QueryRevocationHistoriesParams) SetEndTime(endTime *string) {
	o.EndTime = endTime
}

// WithLimit adds the limit to the query revocation histories params
func (o *QueryRevocationHistoriesParams) WithLimit(limit *int32) *QueryRevocationHistoriesParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query revocation histories params
func (o *QueryRevocationHistoriesParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the query revocation histories params
func (o *QueryRevocationHistoriesParams) WithOffset(offset *int32) *QueryRevocationHistoriesParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query revocation histories params
func (o *QueryRevocationHistoriesParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithSource adds the source to the query revocation histories params
func (o *QueryRevocationHistoriesParams) WithSource(source *string) *QueryRevocationHistoriesParams {
	o.SetSource(source)
	return o
}

// SetSource adds the source to the query revocation histories params
func (o *QueryRevocationHistoriesParams) SetSource(source *string) {
	o.Source = source
}

// WithStartTime adds the startTime to the query revocation histories params
func (o *QueryRevocationHistoriesParams) WithStartTime(startTime *string) *QueryRevocationHistoriesParams {
	o.SetStartTime(startTime)
	return o
}

// SetStartTime adds the startTime to the query revocation histories params
func (o *QueryRevocationHistoriesParams) SetStartTime(startTime *string) {
	o.StartTime = startTime
}

// WithStatus adds the status to the query revocation histories params
func (o *QueryRevocationHistoriesParams) WithStatus(status *string) *QueryRevocationHistoriesParams {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the query revocation histories params
func (o *QueryRevocationHistoriesParams) SetStatus(status *string) {
	o.Status = status
}

// WithTransactionID adds the transactionID to the query revocation histories params
func (o *QueryRevocationHistoriesParams) WithTransactionID(transactionID *string) *QueryRevocationHistoriesParams {
	o.SetTransactionID(transactionID)
	return o
}

// SetTransactionID adds the transactionId to the query revocation histories params
func (o *QueryRevocationHistoriesParams) SetTransactionID(transactionID *string) {
	o.TransactionID = transactionID
}

// WithUserID adds the userID to the query revocation histories params
func (o *QueryRevocationHistoriesParams) WithUserID(userID *string) *QueryRevocationHistoriesParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the query revocation histories params
func (o *QueryRevocationHistoriesParams) SetUserID(userID *string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *QueryRevocationHistoriesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.TransactionID != nil {

		// query param transactionId
		var qrTransactionID string
		if o.TransactionID != nil {
			qrTransactionID = *o.TransactionID
		}
		qTransactionID := qrTransactionID
		if qTransactionID != "" {
			if err := r.SetQueryParam("transactionId", qTransactionID); err != nil {
				return err
			}
		}

	}

	if o.UserID != nil {

		// query param userId
		var qrUserID string
		if o.UserID != nil {
			qrUserID = *o.UserID
		}
		qUserID := qrUserID
		if qUserID != "" {
			if err := r.SetQueryParam("userId", qUserID); err != nil {
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
