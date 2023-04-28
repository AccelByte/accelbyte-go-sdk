// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package payment

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

// Get the enum in QueryPaymentNotificationsParams
const (
	QueryPaymentNotificationsADYENConstant    = "ADYEN"
	QueryPaymentNotificationsALIPAYConstant   = "ALIPAY"
	QueryPaymentNotificationsCHECKOUTConstant = "CHECKOUT"
	QueryPaymentNotificationsPAYPALConstant   = "PAYPAL"
	QueryPaymentNotificationsSTRIPEConstant   = "STRIPE"
	QueryPaymentNotificationsWALLETConstant   = "WALLET"
	QueryPaymentNotificationsWXPAYConstant    = "WXPAY"
	QueryPaymentNotificationsXSOLLAConstant   = "XSOLLA"
)

// Get the enum in QueryPaymentNotificationsParams
const (
	QueryPaymentNotificationsERRORConstant     = "ERROR"
	QueryPaymentNotificationsIGNOREDConstant   = "IGNORED"
	QueryPaymentNotificationsPROCESSEDConstant = "PROCESSED"
	QueryPaymentNotificationsWARNConstant      = "WARN"
)

// NewQueryPaymentNotificationsParams creates a new QueryPaymentNotificationsParams object
// with the default values initialized.
func NewQueryPaymentNotificationsParams() *QueryPaymentNotificationsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryPaymentNotificationsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryPaymentNotificationsParamsWithTimeout creates a new QueryPaymentNotificationsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryPaymentNotificationsParamsWithTimeout(timeout time.Duration) *QueryPaymentNotificationsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryPaymentNotificationsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewQueryPaymentNotificationsParamsWithContext creates a new QueryPaymentNotificationsParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryPaymentNotificationsParamsWithContext(ctx context.Context) *QueryPaymentNotificationsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryPaymentNotificationsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewQueryPaymentNotificationsParamsWithHTTPClient creates a new QueryPaymentNotificationsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryPaymentNotificationsParamsWithHTTPClient(client *http.Client) *QueryPaymentNotificationsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryPaymentNotificationsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*QueryPaymentNotificationsParams contains all the parameters to send to the API endpoint
for the query payment notifications operation typically these are written to a http.Request
*/
type QueryPaymentNotificationsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*EndDate
	  allowed format: \d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}Z

	*/
	EndDate *string
	/*ExternalID*/
	ExternalID *string
	/*Limit*/
	Limit *int32
	/*NotificationSource*/
	NotificationSource *string
	/*NotificationType*/
	NotificationType *string
	/*Offset*/
	Offset *int32
	/*PaymentOrderNo*/
	PaymentOrderNo *string
	/*StartDate
	  allowed format: \d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}Z

	*/
	StartDate *string
	/*Status*/
	Status *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the query payment notifications params
func (o *QueryPaymentNotificationsParams) WithTimeout(timeout time.Duration) *QueryPaymentNotificationsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query payment notifications params
func (o *QueryPaymentNotificationsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query payment notifications params
func (o *QueryPaymentNotificationsParams) WithContext(ctx context.Context) *QueryPaymentNotificationsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query payment notifications params
func (o *QueryPaymentNotificationsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query payment notifications params
func (o *QueryPaymentNotificationsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query payment notifications params
func (o *QueryPaymentNotificationsParams) WithHTTPClient(client *http.Client) *QueryPaymentNotificationsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query payment notifications params
func (o *QueryPaymentNotificationsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query payment notifications params
func (o *QueryPaymentNotificationsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the query payment notifications params
func (o *QueryPaymentNotificationsParams) WithNamespace(namespace string) *QueryPaymentNotificationsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query payment notifications params
func (o *QueryPaymentNotificationsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithEndDate adds the endDate to the query payment notifications params
func (o *QueryPaymentNotificationsParams) WithEndDate(endDate *string) *QueryPaymentNotificationsParams {
	o.SetEndDate(endDate)
	return o
}

// SetEndDate adds the endDate to the query payment notifications params
func (o *QueryPaymentNotificationsParams) SetEndDate(endDate *string) {
	o.EndDate = endDate
}

// WithExternalID adds the externalID to the query payment notifications params
func (o *QueryPaymentNotificationsParams) WithExternalID(externalID *string) *QueryPaymentNotificationsParams {
	o.SetExternalID(externalID)
	return o
}

// SetExternalID adds the externalId to the query payment notifications params
func (o *QueryPaymentNotificationsParams) SetExternalID(externalID *string) {
	o.ExternalID = externalID
}

// WithLimit adds the limit to the query payment notifications params
func (o *QueryPaymentNotificationsParams) WithLimit(limit *int32) *QueryPaymentNotificationsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query payment notifications params
func (o *QueryPaymentNotificationsParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithNotificationSource adds the notificationSource to the query payment notifications params
func (o *QueryPaymentNotificationsParams) WithNotificationSource(notificationSource *string) *QueryPaymentNotificationsParams {
	o.SetNotificationSource(notificationSource)
	return o
}

// SetNotificationSource adds the notificationSource to the query payment notifications params
func (o *QueryPaymentNotificationsParams) SetNotificationSource(notificationSource *string) {
	o.NotificationSource = notificationSource
}

// WithNotificationType adds the notificationType to the query payment notifications params
func (o *QueryPaymentNotificationsParams) WithNotificationType(notificationType *string) *QueryPaymentNotificationsParams {
	o.SetNotificationType(notificationType)
	return o
}

// SetNotificationType adds the notificationType to the query payment notifications params
func (o *QueryPaymentNotificationsParams) SetNotificationType(notificationType *string) {
	o.NotificationType = notificationType
}

// WithOffset adds the offset to the query payment notifications params
func (o *QueryPaymentNotificationsParams) WithOffset(offset *int32) *QueryPaymentNotificationsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query payment notifications params
func (o *QueryPaymentNotificationsParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithPaymentOrderNo adds the paymentOrderNo to the query payment notifications params
func (o *QueryPaymentNotificationsParams) WithPaymentOrderNo(paymentOrderNo *string) *QueryPaymentNotificationsParams {
	o.SetPaymentOrderNo(paymentOrderNo)
	return o
}

// SetPaymentOrderNo adds the paymentOrderNo to the query payment notifications params
func (o *QueryPaymentNotificationsParams) SetPaymentOrderNo(paymentOrderNo *string) {
	o.PaymentOrderNo = paymentOrderNo
}

// WithStartDate adds the startDate to the query payment notifications params
func (o *QueryPaymentNotificationsParams) WithStartDate(startDate *string) *QueryPaymentNotificationsParams {
	o.SetStartDate(startDate)
	return o
}

// SetStartDate adds the startDate to the query payment notifications params
func (o *QueryPaymentNotificationsParams) SetStartDate(startDate *string) {
	o.StartDate = startDate
}

// WithStatus adds the status to the query payment notifications params
func (o *QueryPaymentNotificationsParams) WithStatus(status *string) *QueryPaymentNotificationsParams {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the query payment notifications params
func (o *QueryPaymentNotificationsParams) SetStatus(status *string) {
	o.Status = status
}

// WriteToRequest writes these params to a swagger request
func (o *QueryPaymentNotificationsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.EndDate != nil {

		// query param endDate
		var qrEndDate string
		if o.EndDate != nil {
			qrEndDate = *o.EndDate
		}
		qEndDate := qrEndDate
		if qEndDate != "" {
			if err := r.SetQueryParam("endDate", qEndDate); err != nil {
				return err
			}
		}

	}

	if o.ExternalID != nil {

		// query param externalId
		var qrExternalID string
		if o.ExternalID != nil {
			qrExternalID = *o.ExternalID
		}
		qExternalID := qrExternalID
		if qExternalID != "" {
			if err := r.SetQueryParam("externalId", qExternalID); err != nil {
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

	if o.NotificationSource != nil {

		// query param notificationSource
		var qrNotificationSource string
		if o.NotificationSource != nil {
			qrNotificationSource = *o.NotificationSource
		}
		qNotificationSource := qrNotificationSource
		if qNotificationSource != "" {
			if err := r.SetQueryParam("notificationSource", qNotificationSource); err != nil {
				return err
			}
		}

	}

	if o.NotificationType != nil {

		// query param notificationType
		var qrNotificationType string
		if o.NotificationType != nil {
			qrNotificationType = *o.NotificationType
		}
		qNotificationType := qrNotificationType
		if qNotificationType != "" {
			if err := r.SetQueryParam("notificationType", qNotificationType); err != nil {
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

	if o.PaymentOrderNo != nil {

		// query param paymentOrderNo
		var qrPaymentOrderNo string
		if o.PaymentOrderNo != nil {
			qrPaymentOrderNo = *o.PaymentOrderNo
		}
		qPaymentOrderNo := qrPaymentOrderNo
		if qPaymentOrderNo != "" {
			if err := r.SetQueryParam("paymentOrderNo", qPaymentOrderNo); err != nil {
				return err
			}
		}

	}

	if o.StartDate != nil {

		// query param startDate
		var qrStartDate string
		if o.StartDate != nil {
			qrStartDate = *o.StartDate
		}
		qStartDate := qrStartDate
		if qStartDate != "" {
			if err := r.SetQueryParam("startDate", qStartDate); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
