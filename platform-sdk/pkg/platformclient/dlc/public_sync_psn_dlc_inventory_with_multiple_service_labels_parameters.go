// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package dlc

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewPublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams creates a new PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams object
// with the default values initialized.
func NewPublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams() *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams {
	var ()
	return &PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicSyncPsnDLCInventoryWithMultipleServiceLabelsParamsWithTimeout creates a new PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicSyncPsnDLCInventoryWithMultipleServiceLabelsParamsWithTimeout(timeout time.Duration) *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams {
	var ()
	return &PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams{

		timeout: timeout,
	}
}

// NewPublicSyncPsnDLCInventoryWithMultipleServiceLabelsParamsWithContext creates a new PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicSyncPsnDLCInventoryWithMultipleServiceLabelsParamsWithContext(ctx context.Context) *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams {
	var ()
	return &PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams{

		Context: ctx,
	}
}

// NewPublicSyncPsnDLCInventoryWithMultipleServiceLabelsParamsWithHTTPClient creates a new PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicSyncPsnDLCInventoryWithMultipleServiceLabelsParamsWithHTTPClient(client *http.Client) *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams {
	var ()
	return &PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams{
		HTTPClient: client,
	}
}

/*PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams contains all the parameters to send to the API endpoint
for the public sync psn dlc inventory with multiple service labels operation typically these are written to a http.Request
*/
type PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.PlayStationDLCSyncMultiServiceLabelsRequest
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public sync psn dlc inventory with multiple service labels params
func (o *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams) WithTimeout(timeout time.Duration) *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public sync psn dlc inventory with multiple service labels params
func (o *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public sync psn dlc inventory with multiple service labels params
func (o *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams) WithContext(ctx context.Context) *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public sync psn dlc inventory with multiple service labels params
func (o *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public sync psn dlc inventory with multiple service labels params
func (o *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public sync psn dlc inventory with multiple service labels params
func (o *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams) WithHTTPClient(client *http.Client) *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public sync psn dlc inventory with multiple service labels params
func (o *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public sync psn dlc inventory with multiple service labels params
func (o *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public sync psn dlc inventory with multiple service labels params
func (o *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams) WithBody(body *platformclientmodels.PlayStationDLCSyncMultiServiceLabelsRequest) *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public sync psn dlc inventory with multiple service labels params
func (o *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams) SetBody(body *platformclientmodels.PlayStationDLCSyncMultiServiceLabelsRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the public sync psn dlc inventory with multiple service labels params
func (o *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams) WithNamespace(namespace string) *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public sync psn dlc inventory with multiple service labels params
func (o *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public sync psn dlc inventory with multiple service labels params
func (o *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams) WithUserID(userID string) *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public sync psn dlc inventory with multiple service labels params
func (o *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

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
