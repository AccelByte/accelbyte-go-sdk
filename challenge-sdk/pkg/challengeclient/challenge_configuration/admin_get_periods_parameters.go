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

// NewAdminGetPeriodsParams creates a new AdminGetPeriodsParams object
// with the default values initialized.
func NewAdminGetPeriodsParams() *AdminGetPeriodsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetPeriodsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetPeriodsParamsWithTimeout creates a new AdminGetPeriodsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetPeriodsParamsWithTimeout(timeout time.Duration) *AdminGetPeriodsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetPeriodsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewAdminGetPeriodsParamsWithContext creates a new AdminGetPeriodsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetPeriodsParamsWithContext(ctx context.Context) *AdminGetPeriodsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetPeriodsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewAdminGetPeriodsParamsWithHTTPClient creates a new AdminGetPeriodsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetPeriodsParamsWithHTTPClient(client *http.Client) *AdminGetPeriodsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetPeriodsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*AdminGetPeriodsParams contains all the parameters to send to the API endpoint
for the admin get periods operation typically these are written to a http.Request
*/
type AdminGetPeriodsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ChallengeCode
	  challenge code

	*/
	ChallengeCode string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Limit
	  limit the amount of data retrieved

	*/
	Limit *int64
	/*Offset
	  offset

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get periods params
func (o *AdminGetPeriodsParams) WithTimeout(timeout time.Duration) *AdminGetPeriodsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get periods params
func (o *AdminGetPeriodsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get periods params
func (o *AdminGetPeriodsParams) WithContext(ctx context.Context) *AdminGetPeriodsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get periods params
func (o *AdminGetPeriodsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get periods params
func (o *AdminGetPeriodsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get periods params
func (o *AdminGetPeriodsParams) WithHTTPClient(client *http.Client) *AdminGetPeriodsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get periods params
func (o *AdminGetPeriodsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get periods params
func (o *AdminGetPeriodsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetPeriodsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithChallengeCode adds the challengeCode to the admin get periods params
func (o *AdminGetPeriodsParams) WithChallengeCode(challengeCode string) *AdminGetPeriodsParams {
	o.SetChallengeCode(challengeCode)
	return o
}

// SetChallengeCode adds the challengeCode to the admin get periods params
func (o *AdminGetPeriodsParams) SetChallengeCode(challengeCode string) {
	o.ChallengeCode = challengeCode
}

// WithNamespace adds the namespace to the admin get periods params
func (o *AdminGetPeriodsParams) WithNamespace(namespace string) *AdminGetPeriodsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get periods params
func (o *AdminGetPeriodsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the admin get periods params
func (o *AdminGetPeriodsParams) WithLimit(limit *int64) *AdminGetPeriodsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin get periods params
func (o *AdminGetPeriodsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin get periods params
func (o *AdminGetPeriodsParams) WithOffset(offset *int64) *AdminGetPeriodsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin get periods params
func (o *AdminGetPeriodsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetPeriodsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param challengeCode
	if err := r.SetPathParam("challengeCode", o.ChallengeCode); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
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
