// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package trade_action

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

// Get the enum in GetTradeHistoryByCriteriaParams
const (
	GetTradeHistoryByCriteriaFAILEDConstant  = "FAILED"
	GetTradeHistoryByCriteriaINITConstant    = "INIT"
	GetTradeHistoryByCriteriaSUCCESSConstant = "SUCCESS"
)

// NewGetTradeHistoryByCriteriaParams creates a new GetTradeHistoryByCriteriaParams object
// with the default values initialized.
func NewGetTradeHistoryByCriteriaParams() *GetTradeHistoryByCriteriaParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &GetTradeHistoryByCriteriaParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetTradeHistoryByCriteriaParamsWithTimeout creates a new GetTradeHistoryByCriteriaParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetTradeHistoryByCriteriaParamsWithTimeout(timeout time.Duration) *GetTradeHistoryByCriteriaParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &GetTradeHistoryByCriteriaParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewGetTradeHistoryByCriteriaParamsWithContext creates a new GetTradeHistoryByCriteriaParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetTradeHistoryByCriteriaParamsWithContext(ctx context.Context) *GetTradeHistoryByCriteriaParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &GetTradeHistoryByCriteriaParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewGetTradeHistoryByCriteriaParamsWithHTTPClient creates a new GetTradeHistoryByCriteriaParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetTradeHistoryByCriteriaParamsWithHTTPClient(client *http.Client) *GetTradeHistoryByCriteriaParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &GetTradeHistoryByCriteriaParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*GetTradeHistoryByCriteriaParams contains all the parameters to send to the API endpoint
for the get trade history by criteria operation typically these are written to a http.Request
*/
type GetTradeHistoryByCriteriaParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*Limit*/
	Limit *int32
	/*Offset*/
	Offset *int32
	/*Status
	  Status of the trade (SUCCESS/FAIL)

	*/
	Status *string
	/*Type
	  Type of the trade

	*/
	Type *string
	/*UserID
	  User ID for which the trade history is queried

	*/
	UserID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get trade history by criteria params
func (o *GetTradeHistoryByCriteriaParams) WithTimeout(timeout time.Duration) *GetTradeHistoryByCriteriaParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get trade history by criteria params
func (o *GetTradeHistoryByCriteriaParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get trade history by criteria params
func (o *GetTradeHistoryByCriteriaParams) WithContext(ctx context.Context) *GetTradeHistoryByCriteriaParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get trade history by criteria params
func (o *GetTradeHistoryByCriteriaParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get trade history by criteria params
func (o *GetTradeHistoryByCriteriaParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get trade history by criteria params
func (o *GetTradeHistoryByCriteriaParams) WithHTTPClient(client *http.Client) *GetTradeHistoryByCriteriaParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get trade history by criteria params
func (o *GetTradeHistoryByCriteriaParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get trade history by criteria params
func (o *GetTradeHistoryByCriteriaParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get trade history by criteria params
func (o *GetTradeHistoryByCriteriaParams) WithNamespace(namespace string) *GetTradeHistoryByCriteriaParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get trade history by criteria params
func (o *GetTradeHistoryByCriteriaParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the get trade history by criteria params
func (o *GetTradeHistoryByCriteriaParams) WithLimit(limit *int32) *GetTradeHistoryByCriteriaParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get trade history by criteria params
func (o *GetTradeHistoryByCriteriaParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the get trade history by criteria params
func (o *GetTradeHistoryByCriteriaParams) WithOffset(offset *int32) *GetTradeHistoryByCriteriaParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get trade history by criteria params
func (o *GetTradeHistoryByCriteriaParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithStatus adds the status to the get trade history by criteria params
func (o *GetTradeHistoryByCriteriaParams) WithStatus(status *string) *GetTradeHistoryByCriteriaParams {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the get trade history by criteria params
func (o *GetTradeHistoryByCriteriaParams) SetStatus(status *string) {
	o.Status = status
}

// WithType adds the typeVar to the get trade history by criteria params
func (o *GetTradeHistoryByCriteriaParams) WithType(typeVar *string) *GetTradeHistoryByCriteriaParams {
	o.SetType(typeVar)
	return o
}

// SetType adds the type to the get trade history by criteria params
func (o *GetTradeHistoryByCriteriaParams) SetType(typeVar *string) {
	o.Type = typeVar
}

// WithUserID adds the userID to the get trade history by criteria params
func (o *GetTradeHistoryByCriteriaParams) WithUserID(userID *string) *GetTradeHistoryByCriteriaParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get trade history by criteria params
func (o *GetTradeHistoryByCriteriaParams) SetUserID(userID *string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *GetTradeHistoryByCriteriaParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
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

	if o.Type != nil {

		// query param type
		var qrType string
		if o.Type != nil {
			qrType = *o.Type
		}
		qType := qrType
		if qType != "" {
			if err := r.SetQueryParam("type", qType); err != nil {
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
