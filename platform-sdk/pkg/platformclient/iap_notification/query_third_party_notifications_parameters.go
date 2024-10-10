// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iap_notification

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

// Get the enum in QueryThirdPartyNotificationsParams
const (
	QueryThirdPartyNotificationsAPPLEConstant       = "APPLE"
	QueryThirdPartyNotificationsEPICGAMESConstant   = "EPICGAMES"
	QueryThirdPartyNotificationsGOOGLEConstant      = "GOOGLE"
	QueryThirdPartyNotificationsOCULUSConstant      = "OCULUS"
	QueryThirdPartyNotificationsPLAYSTATIONConstant = "PLAYSTATION"
	QueryThirdPartyNotificationsSTADIAConstant      = "STADIA"
	QueryThirdPartyNotificationsSTEAMConstant       = "STEAM"
	QueryThirdPartyNotificationsTWITCHConstant      = "TWITCH"
	QueryThirdPartyNotificationsXBOXConstant        = "XBOX"
)

// Get the enum in QueryThirdPartyNotificationsParams
const (
	QueryThirdPartyNotificationsERRORConstant     = "ERROR"
	QueryThirdPartyNotificationsIGNOREDConstant   = "IGNORED"
	QueryThirdPartyNotificationsPROCESSEDConstant = "PROCESSED"
	QueryThirdPartyNotificationsWARNConstant      = "WARN"
)

// NewQueryThirdPartyNotificationsParams creates a new QueryThirdPartyNotificationsParams object
// with the default values initialized.
func NewQueryThirdPartyNotificationsParams() *QueryThirdPartyNotificationsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryThirdPartyNotificationsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryThirdPartyNotificationsParamsWithTimeout creates a new QueryThirdPartyNotificationsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryThirdPartyNotificationsParamsWithTimeout(timeout time.Duration) *QueryThirdPartyNotificationsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryThirdPartyNotificationsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewQueryThirdPartyNotificationsParamsWithContext creates a new QueryThirdPartyNotificationsParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryThirdPartyNotificationsParamsWithContext(ctx context.Context) *QueryThirdPartyNotificationsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryThirdPartyNotificationsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewQueryThirdPartyNotificationsParamsWithHTTPClient creates a new QueryThirdPartyNotificationsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryThirdPartyNotificationsParamsWithHTTPClient(client *http.Client) *QueryThirdPartyNotificationsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryThirdPartyNotificationsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*QueryThirdPartyNotificationsParams contains all the parameters to send to the API endpoint
for the query third party notifications operation typically these are written to a http.Request
*/
type QueryThirdPartyNotificationsParams struct {

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
	/*Offset*/
	Offset *int32
	/*Source*/
	Source *string
	/*StartDate
	  allowed format: \d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}Z

	*/
	StartDate *string
	/*Status*/
	Status *string
	/*Type*/
	Type *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the query third party notifications params
func (o *QueryThirdPartyNotificationsParams) WithTimeout(timeout time.Duration) *QueryThirdPartyNotificationsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query third party notifications params
func (o *QueryThirdPartyNotificationsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query third party notifications params
func (o *QueryThirdPartyNotificationsParams) WithContext(ctx context.Context) *QueryThirdPartyNotificationsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query third party notifications params
func (o *QueryThirdPartyNotificationsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query third party notifications params
func (o *QueryThirdPartyNotificationsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query third party notifications params
func (o *QueryThirdPartyNotificationsParams) WithHTTPClient(client *http.Client) *QueryThirdPartyNotificationsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query third party notifications params
func (o *QueryThirdPartyNotificationsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query third party notifications params
func (o *QueryThirdPartyNotificationsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryThirdPartyNotificationsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the query third party notifications params
func (o *QueryThirdPartyNotificationsParams) WithNamespace(namespace string) *QueryThirdPartyNotificationsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query third party notifications params
func (o *QueryThirdPartyNotificationsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithEndDate adds the endDate to the query third party notifications params
func (o *QueryThirdPartyNotificationsParams) WithEndDate(endDate *string) *QueryThirdPartyNotificationsParams {
	o.SetEndDate(endDate)
	return o
}

// SetEndDate adds the endDate to the query third party notifications params
func (o *QueryThirdPartyNotificationsParams) SetEndDate(endDate *string) {
	o.EndDate = endDate
}

// WithExternalID adds the externalID to the query third party notifications params
func (o *QueryThirdPartyNotificationsParams) WithExternalID(externalID *string) *QueryThirdPartyNotificationsParams {
	o.SetExternalID(externalID)
	return o
}

// SetExternalID adds the externalId to the query third party notifications params
func (o *QueryThirdPartyNotificationsParams) SetExternalID(externalID *string) {
	o.ExternalID = externalID
}

// WithLimit adds the limit to the query third party notifications params
func (o *QueryThirdPartyNotificationsParams) WithLimit(limit *int32) *QueryThirdPartyNotificationsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query third party notifications params
func (o *QueryThirdPartyNotificationsParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the query third party notifications params
func (o *QueryThirdPartyNotificationsParams) WithOffset(offset *int32) *QueryThirdPartyNotificationsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query third party notifications params
func (o *QueryThirdPartyNotificationsParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithSource adds the source to the query third party notifications params
func (o *QueryThirdPartyNotificationsParams) WithSource(source *string) *QueryThirdPartyNotificationsParams {
	o.SetSource(source)
	return o
}

// SetSource adds the source to the query third party notifications params
func (o *QueryThirdPartyNotificationsParams) SetSource(source *string) {
	o.Source = source
}

// WithStartDate adds the startDate to the query third party notifications params
func (o *QueryThirdPartyNotificationsParams) WithStartDate(startDate *string) *QueryThirdPartyNotificationsParams {
	o.SetStartDate(startDate)
	return o
}

// SetStartDate adds the startDate to the query third party notifications params
func (o *QueryThirdPartyNotificationsParams) SetStartDate(startDate *string) {
	o.StartDate = startDate
}

// WithStatus adds the status to the query third party notifications params
func (o *QueryThirdPartyNotificationsParams) WithStatus(status *string) *QueryThirdPartyNotificationsParams {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the query third party notifications params
func (o *QueryThirdPartyNotificationsParams) SetStatus(status *string) {
	o.Status = status
}

// WithType adds the typeVar to the query third party notifications params
func (o *QueryThirdPartyNotificationsParams) WithType(typeVar *string) *QueryThirdPartyNotificationsParams {
	o.SetType(typeVar)
	return o
}

// SetType adds the type to the query third party notifications params
func (o *QueryThirdPartyNotificationsParams) SetType(typeVar *string) {
	o.Type = typeVar
}

// WriteToRequest writes these params to a swagger request
func (o *QueryThirdPartyNotificationsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
