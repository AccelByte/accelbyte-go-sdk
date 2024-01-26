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

// Get the enum in AdminGetInboxUsersParams
const (
	AdminGetInboxUsersREADConstant   = "READ"
	AdminGetInboxUsersUNREADConstant = "UNREAD"
)

// NewAdminGetInboxUsersParams creates a new AdminGetInboxUsersParams object
// with the default values initialized.
func NewAdminGetInboxUsersParams() *AdminGetInboxUsersParams {
	var ()
	return &AdminGetInboxUsersParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetInboxUsersParamsWithTimeout creates a new AdminGetInboxUsersParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetInboxUsersParamsWithTimeout(timeout time.Duration) *AdminGetInboxUsersParams {
	var ()
	return &AdminGetInboxUsersParams{

		timeout: timeout,
	}
}

// NewAdminGetInboxUsersParamsWithContext creates a new AdminGetInboxUsersParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetInboxUsersParamsWithContext(ctx context.Context) *AdminGetInboxUsersParams {
	var ()
	return &AdminGetInboxUsersParams{

		Context: ctx,
	}
}

// NewAdminGetInboxUsersParamsWithHTTPClient creates a new AdminGetInboxUsersParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetInboxUsersParamsWithHTTPClient(client *http.Client) *AdminGetInboxUsersParams {
	var ()
	return &AdminGetInboxUsersParams{
		HTTPClient: client,
	}
}

/*AdminGetInboxUsersParams contains all the parameters to send to the API endpoint
for the admin get inbox users operation typically these are written to a http.Request
*/
type AdminGetInboxUsersParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Inbox
	  message id

	*/
	Inbox string
	/*Namespace
	  namespace

	*/
	Namespace string
	/*Limit
	  limit

	*/
	Limit *int64
	/*Offset
	  offset

	*/
	Offset *int64
	/*Status
	  message status

	*/
	Status *string
	/*UserID
	  userId

	*/
	UserID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get inbox users params
func (o *AdminGetInboxUsersParams) WithTimeout(timeout time.Duration) *AdminGetInboxUsersParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get inbox users params
func (o *AdminGetInboxUsersParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get inbox users params
func (o *AdminGetInboxUsersParams) WithContext(ctx context.Context) *AdminGetInboxUsersParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get inbox users params
func (o *AdminGetInboxUsersParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get inbox users params
func (o *AdminGetInboxUsersParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get inbox users params
func (o *AdminGetInboxUsersParams) WithHTTPClient(client *http.Client) *AdminGetInboxUsersParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get inbox users params
func (o *AdminGetInboxUsersParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get inbox users params
func (o *AdminGetInboxUsersParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetInboxUsersParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithInbox adds the inbox to the admin get inbox users params
func (o *AdminGetInboxUsersParams) WithInbox(inbox string) *AdminGetInboxUsersParams {
	o.SetInbox(inbox)
	return o
}

// SetInbox adds the inbox to the admin get inbox users params
func (o *AdminGetInboxUsersParams) SetInbox(inbox string) {
	o.Inbox = inbox
}

// WithNamespace adds the namespace to the admin get inbox users params
func (o *AdminGetInboxUsersParams) WithNamespace(namespace string) *AdminGetInboxUsersParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get inbox users params
func (o *AdminGetInboxUsersParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the admin get inbox users params
func (o *AdminGetInboxUsersParams) WithLimit(limit *int64) *AdminGetInboxUsersParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin get inbox users params
func (o *AdminGetInboxUsersParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin get inbox users params
func (o *AdminGetInboxUsersParams) WithOffset(offset *int64) *AdminGetInboxUsersParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin get inbox users params
func (o *AdminGetInboxUsersParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithStatus adds the status to the admin get inbox users params
func (o *AdminGetInboxUsersParams) WithStatus(status *string) *AdminGetInboxUsersParams {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the admin get inbox users params
func (o *AdminGetInboxUsersParams) SetStatus(status *string) {
	o.Status = status
}

// WithUserID adds the userID to the admin get inbox users params
func (o *AdminGetInboxUsersParams) WithUserID(userID *string) *AdminGetInboxUsersParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin get inbox users params
func (o *AdminGetInboxUsersParams) SetUserID(userID *string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetInboxUsersParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param inbox
	if err := r.SetPathParam("inbox", o.Inbox); err != nil {
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
