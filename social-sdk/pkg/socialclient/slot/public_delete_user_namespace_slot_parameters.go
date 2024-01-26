// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package slot

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

// NewPublicDeleteUserNamespaceSlotParams creates a new PublicDeleteUserNamespaceSlotParams object
// with the default values initialized.
func NewPublicDeleteUserNamespaceSlotParams() *PublicDeleteUserNamespaceSlotParams {
	var ()
	return &PublicDeleteUserNamespaceSlotParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicDeleteUserNamespaceSlotParamsWithTimeout creates a new PublicDeleteUserNamespaceSlotParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicDeleteUserNamespaceSlotParamsWithTimeout(timeout time.Duration) *PublicDeleteUserNamespaceSlotParams {
	var ()
	return &PublicDeleteUserNamespaceSlotParams{

		timeout: timeout,
	}
}

// NewPublicDeleteUserNamespaceSlotParamsWithContext creates a new PublicDeleteUserNamespaceSlotParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicDeleteUserNamespaceSlotParamsWithContext(ctx context.Context) *PublicDeleteUserNamespaceSlotParams {
	var ()
	return &PublicDeleteUserNamespaceSlotParams{

		Context: ctx,
	}
}

// NewPublicDeleteUserNamespaceSlotParamsWithHTTPClient creates a new PublicDeleteUserNamespaceSlotParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicDeleteUserNamespaceSlotParamsWithHTTPClient(client *http.Client) *PublicDeleteUserNamespaceSlotParams {
	var ()
	return &PublicDeleteUserNamespaceSlotParams{
		HTTPClient: client,
	}
}

/*PublicDeleteUserNamespaceSlotParams contains all the parameters to send to the API endpoint
for the public delete user namespace slot operation typically these are written to a http.Request
*/
type PublicDeleteUserNamespaceSlotParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace ID

	*/
	Namespace string
	/*SlotID
	  Slot ID

	*/
	SlotID string
	/*UserID
	  User ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public delete user namespace slot params
func (o *PublicDeleteUserNamespaceSlotParams) WithTimeout(timeout time.Duration) *PublicDeleteUserNamespaceSlotParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public delete user namespace slot params
func (o *PublicDeleteUserNamespaceSlotParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public delete user namespace slot params
func (o *PublicDeleteUserNamespaceSlotParams) WithContext(ctx context.Context) *PublicDeleteUserNamespaceSlotParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public delete user namespace slot params
func (o *PublicDeleteUserNamespaceSlotParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public delete user namespace slot params
func (o *PublicDeleteUserNamespaceSlotParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public delete user namespace slot params
func (o *PublicDeleteUserNamespaceSlotParams) WithHTTPClient(client *http.Client) *PublicDeleteUserNamespaceSlotParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public delete user namespace slot params
func (o *PublicDeleteUserNamespaceSlotParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public delete user namespace slot params
func (o *PublicDeleteUserNamespaceSlotParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicDeleteUserNamespaceSlotParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public delete user namespace slot params
func (o *PublicDeleteUserNamespaceSlotParams) WithNamespace(namespace string) *PublicDeleteUserNamespaceSlotParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public delete user namespace slot params
func (o *PublicDeleteUserNamespaceSlotParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSlotID adds the slotID to the public delete user namespace slot params
func (o *PublicDeleteUserNamespaceSlotParams) WithSlotID(slotID string) *PublicDeleteUserNamespaceSlotParams {
	o.SetSlotID(slotID)
	return o
}

// SetSlotID adds the slotId to the public delete user namespace slot params
func (o *PublicDeleteUserNamespaceSlotParams) SetSlotID(slotID string) {
	o.SlotID = slotID
}

// WithUserID adds the userID to the public delete user namespace slot params
func (o *PublicDeleteUserNamespaceSlotParams) WithUserID(userID string) *PublicDeleteUserNamespaceSlotParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public delete user namespace slot params
func (o *PublicDeleteUserNamespaceSlotParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicDeleteUserNamespaceSlotParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param slotId
	if err := r.SetPathParam("slotId", o.SlotID); err != nil {
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
