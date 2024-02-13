// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package friends

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

// NewAdminListFriendsOfFriendsParams creates a new AdminListFriendsOfFriendsParams object
// with the default values initialized.
func NewAdminListFriendsOfFriendsParams() *AdminListFriendsOfFriendsParams {
	var (
		limitDefault    = int64(25)
		nopagingDefault = bool(false)
		offsetDefault   = int64(0)
	)
	return &AdminListFriendsOfFriendsParams{
		Limit:    &limitDefault,
		Nopaging: &nopagingDefault,
		Offset:   &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminListFriendsOfFriendsParamsWithTimeout creates a new AdminListFriendsOfFriendsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminListFriendsOfFriendsParamsWithTimeout(timeout time.Duration) *AdminListFriendsOfFriendsParams {
	var (
		limitDefault    = int64(25)
		nopagingDefault = bool(false)
		offsetDefault   = int64(0)
	)
	return &AdminListFriendsOfFriendsParams{
		Limit:    &limitDefault,
		Nopaging: &nopagingDefault,
		Offset:   &offsetDefault,

		timeout: timeout,
	}
}

// NewAdminListFriendsOfFriendsParamsWithContext creates a new AdminListFriendsOfFriendsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminListFriendsOfFriendsParamsWithContext(ctx context.Context) *AdminListFriendsOfFriendsParams {
	var (
		limitDefault    = int64(25)
		nopagingDefault = bool(false)
		offsetDefault   = int64(0)
	)
	return &AdminListFriendsOfFriendsParams{
		Limit:    &limitDefault,
		Nopaging: &nopagingDefault,
		Offset:   &offsetDefault,

		Context: ctx,
	}
}

// NewAdminListFriendsOfFriendsParamsWithHTTPClient creates a new AdminListFriendsOfFriendsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminListFriendsOfFriendsParamsWithHTTPClient(client *http.Client) *AdminListFriendsOfFriendsParams {
	var (
		limitDefault    = int64(25)
		nopagingDefault = bool(false)
		offsetDefault   = int64(0)
	)
	return &AdminListFriendsOfFriendsParams{
		Limit:      &limitDefault,
		Nopaging:   &nopagingDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*AdminListFriendsOfFriendsParams contains all the parameters to send to the API endpoint
for the admin list friends of friends operation typically these are written to a http.Request
*/
type AdminListFriendsOfFriendsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*UserID
	  user ID

	*/
	UserID string
	/*FriendID
	  friend userId to check if the user is friend of friend

	*/
	FriendID *string
	/*Limit
	  maximum number of data

	*/
	Limit *int64
	/*Nopaging
	  no paging for faster performance, next will always empty regardless of the data

	*/
	Nopaging *bool
	/*Offset
	  numbers of row to skip within the result

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin list friends of friends params
func (o *AdminListFriendsOfFriendsParams) WithTimeout(timeout time.Duration) *AdminListFriendsOfFriendsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin list friends of friends params
func (o *AdminListFriendsOfFriendsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin list friends of friends params
func (o *AdminListFriendsOfFriendsParams) WithContext(ctx context.Context) *AdminListFriendsOfFriendsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin list friends of friends params
func (o *AdminListFriendsOfFriendsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin list friends of friends params
func (o *AdminListFriendsOfFriendsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin list friends of friends params
func (o *AdminListFriendsOfFriendsParams) WithHTTPClient(client *http.Client) *AdminListFriendsOfFriendsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin list friends of friends params
func (o *AdminListFriendsOfFriendsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin list friends of friends params
func (o *AdminListFriendsOfFriendsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminListFriendsOfFriendsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin list friends of friends params
func (o *AdminListFriendsOfFriendsParams) WithNamespace(namespace string) *AdminListFriendsOfFriendsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin list friends of friends params
func (o *AdminListFriendsOfFriendsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin list friends of friends params
func (o *AdminListFriendsOfFriendsParams) WithUserID(userID string) *AdminListFriendsOfFriendsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin list friends of friends params
func (o *AdminListFriendsOfFriendsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithFriendID adds the friendID to the admin list friends of friends params
func (o *AdminListFriendsOfFriendsParams) WithFriendID(friendID *string) *AdminListFriendsOfFriendsParams {
	o.SetFriendID(friendID)
	return o
}

// SetFriendID adds the friendId to the admin list friends of friends params
func (o *AdminListFriendsOfFriendsParams) SetFriendID(friendID *string) {
	o.FriendID = friendID
}

// WithLimit adds the limit to the admin list friends of friends params
func (o *AdminListFriendsOfFriendsParams) WithLimit(limit *int64) *AdminListFriendsOfFriendsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin list friends of friends params
func (o *AdminListFriendsOfFriendsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithNopaging adds the nopaging to the admin list friends of friends params
func (o *AdminListFriendsOfFriendsParams) WithNopaging(nopaging *bool) *AdminListFriendsOfFriendsParams {
	o.SetNopaging(nopaging)
	return o
}

// SetNopaging adds the nopaging to the admin list friends of friends params
func (o *AdminListFriendsOfFriendsParams) SetNopaging(nopaging *bool) {
	o.Nopaging = nopaging
}

// WithOffset adds the offset to the admin list friends of friends params
func (o *AdminListFriendsOfFriendsParams) WithOffset(offset *int64) *AdminListFriendsOfFriendsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin list friends of friends params
func (o *AdminListFriendsOfFriendsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *AdminListFriendsOfFriendsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
	}

	if o.FriendID != nil {

		// query param friendId
		var qrFriendID string
		if o.FriendID != nil {
			qrFriendID = *o.FriendID
		}
		qFriendID := qrFriendID
		if qFriendID != "" {
			if err := r.SetQueryParam("friendId", qFriendID); err != nil {
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

	if o.Nopaging != nil {

		// query param nopaging
		var qrNopaging bool
		if o.Nopaging != nil {
			qrNopaging = *o.Nopaging
		}
		qNopaging := swag.FormatBool(qrNopaging)
		if qNopaging != "" {
			if err := r.SetQueryParam("nopaging", qNopaging); err != nil {
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
