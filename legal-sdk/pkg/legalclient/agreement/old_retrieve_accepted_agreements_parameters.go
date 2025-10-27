// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package agreement

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewOldRetrieveAcceptedAgreementsParams creates a new OldRetrieveAcceptedAgreementsParams object
// with the default values initialized.
func NewOldRetrieveAcceptedAgreementsParams() *OldRetrieveAcceptedAgreementsParams {
	var ()
	return &OldRetrieveAcceptedAgreementsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewOldRetrieveAcceptedAgreementsParamsWithTimeout creates a new OldRetrieveAcceptedAgreementsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewOldRetrieveAcceptedAgreementsParamsWithTimeout(timeout time.Duration) *OldRetrieveAcceptedAgreementsParams {
	var ()
	return &OldRetrieveAcceptedAgreementsParams{

		timeout: timeout,
	}
}

// NewOldRetrieveAcceptedAgreementsParamsWithContext creates a new OldRetrieveAcceptedAgreementsParams object
// with the default values initialized, and the ability to set a context for a request
func NewOldRetrieveAcceptedAgreementsParamsWithContext(ctx context.Context) *OldRetrieveAcceptedAgreementsParams {
	var ()
	return &OldRetrieveAcceptedAgreementsParams{

		Context: ctx,
	}
}

// NewOldRetrieveAcceptedAgreementsParamsWithHTTPClient creates a new OldRetrieveAcceptedAgreementsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewOldRetrieveAcceptedAgreementsParamsWithHTTPClient(client *http.Client) *OldRetrieveAcceptedAgreementsParams {
	var ()
	return &OldRetrieveAcceptedAgreementsParams{
		HTTPClient: client,
	}
}

/*OldRetrieveAcceptedAgreementsParams contains all the parameters to send to the API endpoint
for the old retrieve accepted agreements operation typically these are written to a http.Request
*/
type OldRetrieveAcceptedAgreementsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*UserID
	  User Id

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the old retrieve accepted agreements params
func (o *OldRetrieveAcceptedAgreementsParams) WithTimeout(timeout time.Duration) *OldRetrieveAcceptedAgreementsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the old retrieve accepted agreements params
func (o *OldRetrieveAcceptedAgreementsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the old retrieve accepted agreements params
func (o *OldRetrieveAcceptedAgreementsParams) WithContext(ctx context.Context) *OldRetrieveAcceptedAgreementsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the old retrieve accepted agreements params
func (o *OldRetrieveAcceptedAgreementsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the old retrieve accepted agreements params
func (o *OldRetrieveAcceptedAgreementsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the old retrieve accepted agreements params
func (o *OldRetrieveAcceptedAgreementsParams) WithHTTPClient(client *http.Client) *OldRetrieveAcceptedAgreementsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the old retrieve accepted agreements params
func (o *OldRetrieveAcceptedAgreementsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the old retrieve accepted agreements params
func (o *OldRetrieveAcceptedAgreementsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *OldRetrieveAcceptedAgreementsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithUserID adds the userID to the old retrieve accepted agreements params
func (o *OldRetrieveAcceptedAgreementsParams) WithUserID(userID string) *OldRetrieveAcceptedAgreementsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the old retrieve accepted agreements params
func (o *OldRetrieveAcceptedAgreementsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *OldRetrieveAcceptedAgreementsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
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
