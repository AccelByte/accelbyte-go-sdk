// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package inbox

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

// Get the enum in AdminGetInboxMessagesParams
const (
	AdminGetInboxMessagesNAMESPACEConstant = "NAMESPACE"
	AdminGetInboxMessagesUSERConstant      = "USER"
)

// Get the enum in AdminGetInboxMessagesParams
const (
	AdminGetInboxMessagesDRAFTConstant  = "DRAFT"
	AdminGetInboxMessagesSENTConstant   = "SENT"
	AdminGetInboxMessagesUNSENTConstant = "UNSENT"
)

// NewAdminGetInboxMessagesParams creates a new AdminGetInboxMessagesParams object
// with the default values initialized.
func NewAdminGetInboxMessagesParams() *AdminGetInboxMessagesParams {
	var ()
	return &AdminGetInboxMessagesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetInboxMessagesParamsWithTimeout creates a new AdminGetInboxMessagesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetInboxMessagesParamsWithTimeout(timeout time.Duration) *AdminGetInboxMessagesParams {
	var ()
	return &AdminGetInboxMessagesParams{

		timeout: timeout,
	}
}

// NewAdminGetInboxMessagesParamsWithContext creates a new AdminGetInboxMessagesParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetInboxMessagesParamsWithContext(ctx context.Context) *AdminGetInboxMessagesParams {
	var ()
	return &AdminGetInboxMessagesParams{

		Context: ctx,
	}
}

// NewAdminGetInboxMessagesParamsWithHTTPClient creates a new AdminGetInboxMessagesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetInboxMessagesParamsWithHTTPClient(client *http.Client) *AdminGetInboxMessagesParams {
	var ()
	return &AdminGetInboxMessagesParams{
		HTTPClient: client,
	}
}

/*AdminGetInboxMessagesParams contains all the parameters to send to the API endpoint
for the admin get inbox messages operation typically these are written to a http.Request
*/
type AdminGetInboxMessagesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*ActiveOnly
	  active only

	*/
	ActiveOnly *bool
	/*EndCreatedAt
	  end created at

	*/
	EndCreatedAt *int64
	/*Limit
	  limit

	*/
	Limit *int64
	/*MessageID
	  message ids

	*/
	MessageID []string
	/*Offset
	  offset

	*/
	Offset *int64
	/*Order
	  anyof: createdAt:asc / createdAt:desc

	*/
	Order *string
	/*Scope
	  message scope

	*/
	Scope *string
	/*StartCreatedAt
	  start created at

	*/
	StartCreatedAt *int64
	/*Status
	  message status

	*/
	Status *string
	/*Transient
	  transient message filter

	*/
	Transient *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get inbox messages params
func (o *AdminGetInboxMessagesParams) WithTimeout(timeout time.Duration) *AdminGetInboxMessagesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get inbox messages params
func (o *AdminGetInboxMessagesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get inbox messages params
func (o *AdminGetInboxMessagesParams) WithContext(ctx context.Context) *AdminGetInboxMessagesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get inbox messages params
func (o *AdminGetInboxMessagesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get inbox messages params
func (o *AdminGetInboxMessagesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get inbox messages params
func (o *AdminGetInboxMessagesParams) WithHTTPClient(client *http.Client) *AdminGetInboxMessagesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get inbox messages params
func (o *AdminGetInboxMessagesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get inbox messages params
func (o *AdminGetInboxMessagesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetInboxMessagesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get inbox messages params
func (o *AdminGetInboxMessagesParams) WithNamespace(namespace string) *AdminGetInboxMessagesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get inbox messages params
func (o *AdminGetInboxMessagesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithActiveOnly adds the activeOnly to the admin get inbox messages params
func (o *AdminGetInboxMessagesParams) WithActiveOnly(activeOnly *bool) *AdminGetInboxMessagesParams {
	o.SetActiveOnly(activeOnly)
	return o
}

// SetActiveOnly adds the activeOnly to the admin get inbox messages params
func (o *AdminGetInboxMessagesParams) SetActiveOnly(activeOnly *bool) {
	o.ActiveOnly = activeOnly
}

// WithEndCreatedAt adds the endCreatedAt to the admin get inbox messages params
func (o *AdminGetInboxMessagesParams) WithEndCreatedAt(endCreatedAt *int64) *AdminGetInboxMessagesParams {
	o.SetEndCreatedAt(endCreatedAt)
	return o
}

// SetEndCreatedAt adds the endCreatedAt to the admin get inbox messages params
func (o *AdminGetInboxMessagesParams) SetEndCreatedAt(endCreatedAt *int64) {
	o.EndCreatedAt = endCreatedAt
}

// WithLimit adds the limit to the admin get inbox messages params
func (o *AdminGetInboxMessagesParams) WithLimit(limit *int64) *AdminGetInboxMessagesParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin get inbox messages params
func (o *AdminGetInboxMessagesParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithMessageID adds the messageID to the admin get inbox messages params
func (o *AdminGetInboxMessagesParams) WithMessageID(messageID []string) *AdminGetInboxMessagesParams {
	o.SetMessageID(messageID)
	return o
}

// SetMessageID adds the messageId to the admin get inbox messages params
func (o *AdminGetInboxMessagesParams) SetMessageID(messageID []string) {
	o.MessageID = messageID
}

// WithOffset adds the offset to the admin get inbox messages params
func (o *AdminGetInboxMessagesParams) WithOffset(offset *int64) *AdminGetInboxMessagesParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin get inbox messages params
func (o *AdminGetInboxMessagesParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithOrder adds the order to the admin get inbox messages params
func (o *AdminGetInboxMessagesParams) WithOrder(order *string) *AdminGetInboxMessagesParams {
	o.SetOrder(order)
	return o
}

// SetOrder adds the order to the admin get inbox messages params
func (o *AdminGetInboxMessagesParams) SetOrder(order *string) {
	o.Order = order
}

// WithScope adds the scope to the admin get inbox messages params
func (o *AdminGetInboxMessagesParams) WithScope(scope *string) *AdminGetInboxMessagesParams {
	o.SetScope(scope)
	return o
}

// SetScope adds the scope to the admin get inbox messages params
func (o *AdminGetInboxMessagesParams) SetScope(scope *string) {
	o.Scope = scope
}

// WithStartCreatedAt adds the startCreatedAt to the admin get inbox messages params
func (o *AdminGetInboxMessagesParams) WithStartCreatedAt(startCreatedAt *int64) *AdminGetInboxMessagesParams {
	o.SetStartCreatedAt(startCreatedAt)
	return o
}

// SetStartCreatedAt adds the startCreatedAt to the admin get inbox messages params
func (o *AdminGetInboxMessagesParams) SetStartCreatedAt(startCreatedAt *int64) {
	o.StartCreatedAt = startCreatedAt
}

// WithStatus adds the status to the admin get inbox messages params
func (o *AdminGetInboxMessagesParams) WithStatus(status *string) *AdminGetInboxMessagesParams {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the admin get inbox messages params
func (o *AdminGetInboxMessagesParams) SetStatus(status *string) {
	o.Status = status
}

// WithTransient adds the transient to the admin get inbox messages params
func (o *AdminGetInboxMessagesParams) WithTransient(transient *bool) *AdminGetInboxMessagesParams {
	o.SetTransient(transient)
	return o
}

// SetTransient adds the transient to the admin get inbox messages params
func (o *AdminGetInboxMessagesParams) SetTransient(transient *bool) {
	o.Transient = transient
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetInboxMessagesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.ActiveOnly != nil {

		// query param activeOnly
		var qrActiveOnly bool
		if o.ActiveOnly != nil {
			qrActiveOnly = *o.ActiveOnly
		}
		qActiveOnly := swag.FormatBool(qrActiveOnly)
		if qActiveOnly != "" {
			if err := r.SetQueryParam("activeOnly", qActiveOnly); err != nil {
				return err
			}
		}

	}

	if o.EndCreatedAt != nil {

		// query param endCreatedAt
		var qrEndCreatedAt int64
		if o.EndCreatedAt != nil {
			qrEndCreatedAt = *o.EndCreatedAt
		}
		qEndCreatedAt := swag.FormatInt64(qrEndCreatedAt)
		if qEndCreatedAt != "" {
			if err := r.SetQueryParam("endCreatedAt", qEndCreatedAt); err != nil {
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

	valuesMessageID := o.MessageID

	joinedMessageID := swag.JoinByFormat(valuesMessageID, "multi")
	// query array param messageId
	if err := r.SetQueryParam("messageId", joinedMessageID...); err != nil {
		return err
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

	if o.Scope != nil {

		// query param scope
		var qrScope string
		if o.Scope != nil {
			qrScope = *o.Scope
		}
		qScope := qrScope
		if qScope != "" {
			if err := r.SetQueryParam("scope", qScope); err != nil {
				return err
			}
		}

	}

	if o.StartCreatedAt != nil {

		// query param startCreatedAt
		var qrStartCreatedAt int64
		if o.StartCreatedAt != nil {
			qrStartCreatedAt = *o.StartCreatedAt
		}
		qStartCreatedAt := swag.FormatInt64(qrStartCreatedAt)
		if qStartCreatedAt != "" {
			if err := r.SetQueryParam("startCreatedAt", qStartCreatedAt); err != nil {
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

	if o.Transient != nil {

		// query param transient
		var qrTransient bool
		if o.Transient != nil {
			qrTransient = *o.Transient
		}
		qTransient := swag.FormatBool(qrTransient)
		if qTransient != "" {
			if err := r.SetQueryParam("transient", qTransient); err != nil {
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
